$LOAD_PATH.unshift("#{File.dirname(__FILE__)}")
require 'capybara'
require 'page_magic/exceptions'
require 'page_magic/session'
require 'page_magic/elements'
require 'page_magic/element_context'
require 'page_magic/element'
require 'page_magic/page_magic'
require 'page_magic/drivers'

module PageMagic
  class UnspportedBrowserException < Exception;end
  class ConfigurationException  < Exception;end

  class << self
    attr_accessor :default_host
    
    def drivers
      @drivers ||= Drivers.new.tap do |drivers|
        drivers.load
      end
    end

    def session(application: nil, browser: :rack_test, options: {})
      driver = drivers.find(browser)
      raise UnspportedBrowserException unless driver

      Capybara.register_driver browser do |app|
        driver.build(app, browser: browser, options: options)
      end

      Session.new(Capybara::Session.new(browser, application))
    end

    def included clazz
      clazz.extend Elements
      pages << clazz if clazz.is_a? Class

      class << clazz
        def url url=nil
          @url = url if url
          @url
        end

        def path path=nil
          raise ConfigurationException unless PageMagic.default_host
          if path
            @path = path
            @url = "#{Capybara.default_host}#{path}"
          end
          @path
        end

        def inherited clazz
          clazz.element_definitions.merge!(element_definitions)
          PageMagic.pages << clazz
        end
      end
    end

    def pages
      @pages||=[]
    end

    def configure(&block)
      block.call(self)
      self
    end

    def default_host=(value)
      Capybara.default_host = @default_host = value
    end
  end
end

# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "page_magic"
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Leon Davis"]
  s.date = "2013-10-31"
  s.description = "Framework for modeling and interacting with webpages which wraps capybara"
  s.email = "info@lad-tech.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".ruby-gemset",
    ".ruby-version",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/page_magic.rb",
    "lib/page_magic/ajax_support.rb",
    "lib/page_magic/browser.rb",
    "lib/page_magic/element_context.rb",
    "lib/page_magic/page_element.rb",
    "lib/page_magic/page_elements.rb",
    "lib/page_magic/page_magic.rb",
    "lib/page_magic/page_section.rb",
    "lib/page_magic/session.rb",
    "page_magic.gemspec",
    "spec/browser_spec.rb",
    "spec/element_context_spec.rb",
    "spec/helpers.rb",
    "spec/helpers/capybara.rb",
    "spec/member_methods_spec.rb",
    "spec/page_element_spec.rb",
    "spec/page_elements_spec.rb",
    "spec/page_magic_spec.rb",
    "spec/page_section_spec.rb",
    "spec/session_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "https://github.com/ladtech/page_magic"
  s.licenses = ["ruby"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Framework for modeling and interacting with webpages"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<watir-webdriver>, [">= 0"])
      s.add_runtime_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_runtime_dependency(%q<watir-webdriver>, [">= 0"])
    else
      s.add_dependency(%q<watir-webdriver>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<watir-webdriver>, [">= 0"])
    end
  else
    s.add_dependency(%q<watir-webdriver>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<watir-webdriver>, [">= 0"])
  end
end


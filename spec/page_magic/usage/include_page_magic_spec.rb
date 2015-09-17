describe 'including PageMagic' do
  include Capybara::DSL

  let :page_class do
    Class.new { include PageMagic }
  end

  context 'lets you define pages' do

    it 'gives a method for defining the url' do
      page_class.url :url
      page_class.url.should == :url
    end

    it 'lets you define elements' do
      page_class.is_a?(PageMagic::Elements).should be_true
    end
  end

  describe 'lets you use path' do

    context 'default_host is set' do
      before { PageMagic.default_host = 'http://rock_n_roll.com' }

      it 'gives a method for defining the path' do
        page_class.path '/path1'
        page_class.path.should == '/path1'
      end

      it 'defines the url value' do
        page_class.path '/path1'
        page_class.url.should == 'http://rock_n_roll.com/path1'
      end

      after do
        PageMagic.default_host = nil
        Capybara.default_host = 'http://www.example.com'
      end
    end

    context 'default_host is no set' do
      it 'raises exception' do
        expect { page_class.path '/path2' }.to raise_error
      end
    end
  end

end
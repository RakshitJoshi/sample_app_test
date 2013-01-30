require 'spec_helper'

describe "StaticPages", js: true do
#  describe "GET /static_pages/home" do
#    it "should have the content of 'Sample App'" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
  subject { page }
  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', :text => 'Welcome to Rakshit App') }
  
    it { should have_selector('title', text: full_title('')) }
    
    it { should have_selector('title', :text => "| Home Page") }
  end

  describe "Help Page" do
  	before { visit help_path }
    it { should have_selector('h1' ,:text => 'Help Page') }
  	
    it { should have_selector('title', text: full_title('')) }
    
    it { should have_selector('title', :text => '| Help Page') }
  end

  describe "About Us" do
  	before { visit about_path }
    it { should have_selector('h1', text: 'About Us') }
  	
    it { should have_selector('title', text: full_title('')) }
    
    it { should have_selector('title', text: "| About Us") }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: "Contact") }
       
    it { should have_selector('title', text: full_title('')) }
    
    it { should have_selector('title', text: '| Contact Page') }
  end
end

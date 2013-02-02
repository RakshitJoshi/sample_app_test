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
    it { should have_selector('h1', text: "Contact Us") }
       
    it { should have_selector('title', text: full_title('')) }
    
    it { should have_selector('title', text: '| Contact Us') }
  end

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end
  describe "Home Page" do
    before { visit root_path }
    let(:heading) { 'Welcome to Rakshit App' }
    let(:page_title) { '' }
    it_should_behave_like 'all static pages'
    it { should have_selector 'title', text: '| Home Page' }
  end

  describe "Help Page" do
    before { visit help_path }
    let(:heading) { 'Help Page' }
    let(:page_title) { '' }
    it_should_behave_like 'all static pages'
    it { should have_selector 'title', text: '| Help Page' }
  end

  describe "About Us" do
    before { visit about_path }
    let(:heading) { 'About Us' }
    let(:page_title) { '' }
    it_should_behave_like 'all static pages'
    it { should have_selector 'title', text: '| About Us' }
  end

  describe "Contact Page" do
    before { visit contact_path }
    let(:heading) { 'Contact Us' }
    let(:page_title) { '' }
    it_should_behave_like 'all static pages'
    it { should have_selector 'title', text: "| Contact Us" }
  end

  it "should have the right link on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help Page')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact Us')
    click_link "Home"
    click_link "Sign Up Now"
    page.should have_selector 'title', text: full_title('Sign Up')
  end
end
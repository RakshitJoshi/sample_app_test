require 'spec_helper'

describe "StaticPages", js: true do
#  describe "GET /static_pages/home" do
#    it "should have the content of 'Sample App'" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit home_path
      page.should have_selector('h1', :text => 'sample app')
    end

    it "should have the base title" do
      visit home_path
      page.should have_selector('title', text: "Welcome to Rakshit")
    end

    it "should have the custom page title" do
      visit home_path
      page.should have_selector('title', :text => "| Home Page")
    end
  end

  describe "Help Page" do
  	it "should have the h1 'Help Page' " do
  		visit help_path
  		page.should have_selector('h1' ,:text => 'Help Page')
  	end

    it "should have the title of 'Help Page' " do
      visit help_path
      page.should have_selector('title', :text => 'Help Page')
    end
  end

  describe "About Us" do
  	it "should have the h1 'About us'" do
  		visit about_path
  		page.should have_selector('h1', text: 'About Us')
  	end

    it "should have the title of 'About Us' " do
      visit about_path
      page.should have_selector('title', text: "About Us")
    end
  end
end

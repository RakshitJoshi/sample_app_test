require 'spec_helper'

describe "User Pages", js: true do
  subject { page }
  describe "signup page" do
  	before { visit signup_path }
    it { should have_selector('h1', text: "Sign Up") }
    it { should have_selector('title', text: full_title('')) }
    it { should have_selector('title', text: '| Sign Up') }
  end
end

require 'spec_helper'

describe "Pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      before { visit root_path }
      page.should have_content('Search for a movie.')
    end
    
  end
end
require 'spec_helper'

describe "Static pages" do

  describe "Home pages" do
    
  	it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('2Weeks')
    end

    it "should have an h1 tag with '2Weeks' " do
    	visit '/static_pages/home'
    	page.should have_tag('section') do 
    		with_tag 'h1', :text => '2Weeks'
    	end
    end
  end
end

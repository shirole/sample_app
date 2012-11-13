require 'spec_helper'

describe "StaticPages" do
 
  describe "Home Page" do
    #before(:each) visit "/static_pages/home"
    
    it "should have the content Sample App" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/static_pages/home"
      page.should have_content( "Sample App" )
    end
    it "should have the title Home" do
    	visit "/static_pages/home"
    	page.should have_selector("title", :text => "Ruby on Rails Sample App | Home")
     end
    
  end
  describe "Help Page" do
    it "should have the content Help" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/help"
      page.should have_content( "Help" )
    end
    it "should have the title Help" do
    	visit "/help"
    	page.should have_selector("title", :text => "Ruby on Rails Sample App | Help")
    end
  end
  describe "About Page" do
    it "should have the content About Us" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/static_pages/about"
      page.should have_content( "About Us" )
    end
    it "should have the title About" do
    	visit "/static_pages/about"
    	page.should have_selector("title", :text => "Ruby on Rails Sample App | About")
    
    end
    
  end
   
  describe "Contact Page" do
    it "should have the h1 Contact" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/static_pages/contact"
      page.should have_selector( "h1", :text => "Contact")
    end
    
    it "should have the title Contact" do
    	visit "/static_pages/contact"
    	page.should have_selector("title", :text => "Ruby on Rails Sample App | Contact")
    end
  
  end
  
end
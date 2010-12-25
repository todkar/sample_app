require 'spec_helper'

describe PagesController do
  integrate_views

  describe "home" do
    it "should be successful" do
      get :home
      response.should be_success
    end
    
    it "should have right title" do
      get :home
      response.should have_tag("title", "Sample app | Home")
    end
  end
  
  describe "contact" do
    it "should be successful" do
      get :contact
      response.should be_success
    end
    
    it "should have right title" do
      get :contact
      response.should have_tag("title", "Sample app | Contact")
    end
  end
  
  describe "about" do
    it "should be successful" do
      get :about
      response.should be_success
    end
    
    it "should have right title" do 
      get :about
      response.should have_tag("title", "Sample app | About")
    end
  end
end

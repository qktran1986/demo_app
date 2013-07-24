require 'spec_helper'

describe PagesController do

	render_views
	
	let(:base_title) { "Sample App" }
	
	describe "Home page" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
  
		it "should have the right title" do
			visit '/'
			expect(page).to have_title("#{base_title} | Home")
		end
    
		it "should have the content 'Sample App'" do
			visit '/'
			expect(page).to have_content('Sample App')
		end
	end

  describe "Help page" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
  
		it "should have the right title" do
			visit '/help'
			expect(page).to have_title("#{base_title} | Help")
		end
  end

  describe "Contact page" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  
		it "should have the right title" do
			visit '/contact'
			expect(page).to have_title("#{base_title} | Contact")
		end
  end

  describe "About page" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  
		it "should have the right title" do
			visit '/about'
			expect(page).to have_title("#{base_title} | About")
		end
  end

end

require 'spec_helper'
require 'rails_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have content 'Главная Страница' " do
      visit root_path
      expect(page).to have_content('Главная Страница')
    end
    it "should have title 'Home' " do
      visit root_path
      expect(page).to have_title('Home')
    end
  end
   describe "Help page" do
    it "should have content 'Помощь' " do
      visit help_path
      expect(page).to have_content('Помощь')
    end
    it "should have title 'Help' " do
      visit help_path
      expect(page).to have_title('Help')
    end  
  end
   describe "About page" do
    it "should have content 'О нас' " do
      visit about_path
      expect(page).to have_content('О нас')
    end
    it "should have title 'About Us' " do
      visit about_path
      expect(page).to have_title('About Us')
    end
  end
end

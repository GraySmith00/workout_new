require "rails_helper"

RSpec.feature "Users signup" do
    
    scenario "with valid credentials" do
        
       visit '/'
       
       click_link "Sign up"
       fill_in "Email", with: "user@example.com"
       fill_in "Password", with: "12345678"
       fill_in "Password confirmation", with: "12345678"
       
       click_button "Sign up"
       
       expect(page).to have_content("Welcome! You have signed up successfully.")
        
    end
    
end
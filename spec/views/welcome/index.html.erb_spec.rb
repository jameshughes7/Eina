require 'rails_helper'

feature 'homepage' do
  describe 'index.html.erb' do
    scenario 'should display text on the homepage' do
      visit '/'
      expect(page).to have_content("Hello there!")
    end

    scenario 'should have a link to restraunts page' do
      visit '/'
      expect(status_code).to eq (200)
      expect(page).to have_link("Visit restaurants", href: "/restaurants" )
    end
  end
end

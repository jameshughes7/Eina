require 'rails_helper'

feature 'new restaurant' do
  scenario 'should be able to view new restaurant page' do
    visit 'restaurants/new'
    expect(page).to have_content ("New Restaurant")
  end

  scenario 'show new restaurant created' do
    visit 'restaurant/new'
    fill_in "restaurant[name]", with: "Jimmy's Gatsby's"
    fill_in "restaurant[description]", with: "Good old traditional gatsby"
    fill_in "restaurant[location]", with: "Wynberg"
    click_button "submit"
    expect(page).to have_content(name: "Jimmy's Gatsby's", description: "Good old traditional gatsby", location: "Wynberg")
  end

end

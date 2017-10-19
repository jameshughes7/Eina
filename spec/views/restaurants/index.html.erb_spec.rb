require 'rails_helper'

feature 'new restaurant' do
  scenario 'should be able to view new restaurant page' do
    visit 'restaurants/new'
    expect(page).to have_content ("New Restaurant")
  end

  scenario 'show new restaurant created' do
    visit new_restaurant_path
    fill_in "restaurant[name]", with: "Jimmy's Gatsby's"
    fill_in "restaurant[description]", with: "Good old traditional gatsby"
    fill_in "restaurant[location]", with: "Wynberg"
    click_button "Save Restaurant"
    expect(page).to have_content("Name: Jimmy's Gatsby's")
  end

  scenario 'show list of restaurants' do
    visit restaurants_path
    expect(page).to have_content("List of restaurants")
  end

end

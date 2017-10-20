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
    expect(status_code).to eq (200)
    p page.body

    expect(page).to have_content("List of restaurants")
  end

  scenario 'adding a New Restaurant link' do
    visit restaurants_path
    click_link "New restaurant"
    expect(page).to have_current_path new_restaurant_path
  end

  scenario 'adding back link to navigate back to restaurants' do
    visit new_restaurant_path
    click_link "Back"
    expect(page).to have_current_path restaurants_path
  end

end

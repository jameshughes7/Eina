require 'rails_helper'

feature 'new restaurant' do
  scenario 'should be able to view new restaurant page' do
    visit 'restaurants/new'
    expect(page).to have_content ("New Restaurant")
  end
end

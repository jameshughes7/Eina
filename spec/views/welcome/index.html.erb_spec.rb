require 'rails_helper'

feature 'homepage' do
describe 'index.html.erb' do
  scenario 'should display text on the homepage' do
    visit '/'
    expect(page).to have_content("Hello there!")
    end
  end
end

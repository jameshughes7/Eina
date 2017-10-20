module CapybaraHelper
  def add_restaurant(name = "Nandos", description = "SA portugese food in London", location = "Wimbledon")
    click_on 'Add restaurant'
    fill_in "restaurant[name]", with: name
    fill_in "restaurant[description]", with: description
    fill_in "restaurant[location]", with: location
    click_button "Save Restaurant"
  end
end

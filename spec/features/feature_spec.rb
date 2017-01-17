require 'spec_helper'

RSpec.feature "Name form", :type => :feature do
	scenario "User enters a name and submit" do
	visit('/')
	fill_in('name', with: 'John')
	click_button('Submit')
	expect(page).to have_content('John')
	end
end

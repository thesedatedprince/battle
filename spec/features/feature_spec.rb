require 'spec_helper'

RSpec.feature "Name form", :type => :feature do
	scenario "User enters a name and submit" do
	visit('/')
	fill_in('player_one_name', with: 'John')
	fill_in('player_two_name', with: 'Bill')
	click_button('Submit')
	expect(page).to have_content('John vs Bill')
	end
end

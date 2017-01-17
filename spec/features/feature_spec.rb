require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara/rack_test'

RSpec.feature "Name form", :type => :feature do
	scenario "User enters a name and submit" do
		fill_in('Name', with: 'John')
		click_button 'Submit'
		expect(page).to have_content?('John')
	end
end

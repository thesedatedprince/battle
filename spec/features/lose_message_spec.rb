require 'spec_helper'

feature 'Lose message' do
  scenario 'It should display a message if player\'s HP is 0' do
    sign_in_and_play
    18.times do click_link('Attack')
    click_button('OK')
    end
    click_link('Attack')
    expect(page).to have_content "Mittens loses."
  end
end

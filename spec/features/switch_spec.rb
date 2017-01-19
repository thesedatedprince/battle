require 'spec_helper'

feature 'switch turns' do
  scenario 'it start with Player 1\'s turn' do
    sign_in_and_play
    expect(page).to have_content('Dave\'s turn')
  end
  scenario 'it should switch with Player 2\'s turn' do
    sign_in_and_play
    click_link('Attack')
    click_link('OK')
    expect(page).to have_content('Mittens\'s turn')
  end
end

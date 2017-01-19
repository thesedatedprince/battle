require 'spec_helper'

feature 'Lose message' do
  scenario 'It should display a message if player 2\'s HP is 0' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    18.times do 
    	attack_and_confirm
    end
    click_link('Attack')
    expect(page).to have_content "Mittens loses."
  end

  scenario 'It should display a message if player 1\'s HP is 0' do
  	sign_in_and_play
  	attack_and_confirm
  	allow(Kernel).to receive(:rand).and_return(100)
  	click_link('Attack')
  	expect(page).to have_content "Dave loses."
  end
end

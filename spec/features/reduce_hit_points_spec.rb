require 'spec_helper'

feature 'Reduce HP' do
  scenario 'reduce HP after an attack' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    click_link('Attack')
    expect(page).to have_content "Mittens: 90HP"
  end

  scenario 'reduce Player 1 HP after player 2 attack' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    attack_and_confirm
    click_link('Attack')
    expect(page).to have_content "Dave: 90HP"
  end
end

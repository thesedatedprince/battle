# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "attack_player" do

  scenario "Confirmation of attack on player 2" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Fox has attacked Badger"
  end

  scenario "Confirmation of attack on player 1" do
    sign_in_and_play
    click_button 'Attack'
    click_link 'ok'
    click_button 'Attack'
    expect(page).to have_content "Badger has attacked Fox"
  end

end

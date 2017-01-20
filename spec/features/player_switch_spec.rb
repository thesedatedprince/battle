# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
feature '#switch' do
  scenario 'it allows player_2 to attack player_1, then switch' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Other!'
  end

  scenario 'it correctly changes the player_2 points on first attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Badger points reduced by 10 to 90"
  end

  scenario 'it allows a switch to player_1 being attacked' do
    fight
    expect(page).to have_content "Fox points reduced by 10 to 90"
  end

  scenario 'player_1 can attack after being attacked' do
    fight
    click_button 'Attack'
    expect(page).to have_content "Badger has #{$game.player_2.points} hit points"
  end

end

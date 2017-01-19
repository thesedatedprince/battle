feature 'heal self'do
  scenario 'player heals themself' do
    sign_in_and_play
	click_link ('Heal')
	expect(page).to have_content 'Heal Confirmed'
  end
end
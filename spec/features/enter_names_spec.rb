feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Fox'
    fill_in :player_2_name, with: 'Badger'
    click_button 'Submit'
    expect(page).to have_content "Fox vs. Badger"
  end
end

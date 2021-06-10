feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Charmander'
    fill_in :player_2_name, with: 'Squirtle'
    click_button 'Submit'

    save_and_open_page # will save the web page and open the browser to display it
    
    expect(page).to have_content 'Charmander v Squirtle'
  end
end

feature 'View HP' do
  scenario 'see Player 2 HP' do
    visit('/')
    fill_in :player_1_name, with: 'Charmander'
    fill_in :player_2_name, with: 'Squirtle'
    click_button 'Submit'
    expect(page).to have_content 'Squirtle: 100HP'
  end
end


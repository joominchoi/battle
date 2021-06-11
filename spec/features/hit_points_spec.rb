feature 'View HP' do
  scenario 'see Player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Squirtle: 100HP'
  end
end

feature 'Attacking' do  
  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Squirtle: 100HP'
    expect(page).to have_content 'Squirtle: 90HP'
  end
end
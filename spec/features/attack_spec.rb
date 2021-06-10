feature 'Attacking' do
  scenario 'attacking player 2 and getting confirmation' do
  sign_in_and_play
  click_button 'Attack'
  expect(page).to have_content 'Charmander attacked Squirtle!'
  end
  
  # scenario 'reduce players HP' do
  #   sign_in_and_play
  #   click_button 'Attack'
  #   expect(page).to have_content 'Mittens: 90HP'
  # end

end
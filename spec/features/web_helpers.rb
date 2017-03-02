def sign_in_and_play
  visit ('/')
  fill_in :player1_name, with: 'Bernard'
  fill_in :player2_name, with: 'Eva'
  click_button 'Submit'
end

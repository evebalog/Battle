feature 'Attack player' do
  scenario 'player 1 can attack player 2' do
    sign_in_and_play
    click_button 'Combat!!!'
    expect(page).to have_content "Eva, you're under attack!"
  end

end

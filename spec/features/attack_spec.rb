require 'player'

feature 'Attack player' do
  scenario 'reduce player 2 hit points by 10' do
    sign_in_and_play
    click_button 'Combat!!!'
    expect(page).to have_content "Eva, you've got 40 hit points left!"
  end

end

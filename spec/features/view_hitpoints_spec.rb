feature 'View hit points' do
  scenario "can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Bernard's hit points: 50"
  end
end

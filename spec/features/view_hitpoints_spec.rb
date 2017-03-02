feature 'View hit points' do
  scenario "can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Eva's hit points: 100"
  end
end

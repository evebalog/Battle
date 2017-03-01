feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1_name, with: 'Bernard'
    fill_in :player2_name, with: 'Eva'
    click_button 'Submit'
    expect(page).to have_content 'Bernard will play against Eva!'
  end
end

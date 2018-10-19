feature 'player draws' do

let (:game) {double :game, computer_choice: 'Paper'}

  scenario 'Player can see they have drawn' do
    sign_in_and_play
    allow(game).to receive(:computer_choice).and_return('Paper')
    click_button('Paper')
    expect(page).to have_content("Computer put Paper You draw!")
  end

end
feature 'player wins' do

let (:computer) {double :computer, choice: 'Rock'}
let (:game) {double :game, computer_choice: 'Rock'}

  scenario 'Player can see they have won' do
    sign_in_and_play
    allow(game).to receive(:computer_choice).and_return('Rock')
    click_button('Paper')
    expect(page).to have_content("Computer put Rock You win!")
  end

end

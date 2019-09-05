feature "names form" do
  scenario "expect player names" do
    sign_in_and_play
    expect(page).to have_content('Player: James')
    expect(page).to have_content('Player: Mike')
  end

  scenario "expect player names" do
    sign_in_and_play
    expect(page).to have_content('James - hit points: 10')
    expect(page).to have_content('Mike - hit points: 10')
  end

  scenario "Player1 attacks Player2" do
    sign_in_and_play
    click_button('P1-Attack')
    expect(page).to have_content('Attack successful')
  end

  scenario "Player1 attack reduces Player2 hp by 10" do
    sign_in_and_play
    click_button('P1-Attack')
    expect(page).to have_content('James - hit points: 10')
    expect(page).to have_content('Mike - hit points: 0')
  end
end

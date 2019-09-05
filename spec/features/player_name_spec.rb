feature "names form" do
  scenario "expect player names" do
    sign_in_and_play
    expect(page).to have_content('Player: James')
    expect(page).to have_content('Player: Mike')
  end

  scenario "expect player names" do
    sign_in_and_play
    expect(page).to have_content('James - hit points: 10')
  end
end

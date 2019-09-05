def sign_in_and_play
  visit('/')
  fill_in('Player1', with: 'James')
  fill_in('Player2', with: 'Mike')
  click_button('Submit')
end

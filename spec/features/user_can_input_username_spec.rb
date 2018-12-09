# frozen_string_literal: true

feature 'Filling in Username' do
  scenario 'Can see the form' do
    visit '/'

    expect(page).to have_selector("input[name='username']")
  end
end 

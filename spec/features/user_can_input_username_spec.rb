# frozen_string_literal: true

feature 'Filling in Username' do
  scenario 'Can see the form' do
    visit '/'

    expect(page).to have_selector("input[name='username']")
  end

  scenario 'Fills in form with valid user and is directed to the /results page' do
    visit '/'
    fill_in 'username', with: 'darciew'
    click_on 'Submit'

    expect(page).to have_current_path '/results'
  end
end

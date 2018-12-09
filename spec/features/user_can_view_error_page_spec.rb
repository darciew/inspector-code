# frozen_string_literal: true

feature 'Error Page' do
  scenario 'Displays error page if a username is incorrectly entered' do
    visit '/'
    fill_in 'username', with: 'bad user name'
    click_on 'Submit'

    expect(page).to have_css('.error-content')
  end
end

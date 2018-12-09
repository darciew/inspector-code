# frozen_string_literal: true

feature 'Error Page' do
  scenario 'Displays error page if a username is incorrectly entered' do
    visit '/'
    fill_in 'username', with: 'bad user name'
    click_on 'Submit'

    expect(page).to have_css('.error-content')
  end

  scenario 'Can see a button that would return them to the homepage' do
    visit '/'
    fill_in 'username', with: 'bad user name'
    click_on 'Submit'

    expect(page).to have_selector("input[class='return-home']")
  end

  scenario 'Can click back to the homepage from the error page' do
    visit '/'
    fill_in 'username', with: 'bad user name'
    click_on 'Submit'
    click_on 'Try Another?'

    expect(page).to have_current_path '/'
  end
end

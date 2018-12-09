# frozen_string_literal: true

feature 'Error Page' do
  scenario 'Displays error page if a username is incorrectly entered' do
    fill_in_form_wrong('bad user name')

    expect(page).to have_css('.error-content')
  end

  scenario 'Can see a button that would return them to the homepage' do
    fill_in_form_wrong('bad user name')

    expect(page).to have_selector("input[class='return-home']")
  end

  scenario 'Can click back to the homepage from the error page' do
    fill_in_form_wrong('bad user name')
    click_on 'Try Another?'

    expect(page).to have_current_path '/'
  end
end

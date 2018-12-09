# frozen_string_literal: true

feature 'Filling in Username' do
  scenario 'Can see the form' do
    visit '/'

    expect(page).to have_selector("input[name='username']")
  end

  scenario 'Fills in form with valid user and is directed to the /results page' do
    fill_in_form('apple')

    expect(page).to have_current_path '/results'
  end

  scenario 'Can see the results after filling in the form' do
    fill_in_form('apple')

    expect(page).to have_content('It would seem that apple\'s favourite programming language is')
  end
end

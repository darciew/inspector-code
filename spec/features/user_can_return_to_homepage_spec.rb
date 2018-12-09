# frozen_string_literal: true

feature 'Return to Homepage' do
  scenario 'Can see a button that would return them to the homepage' do
    fill_in_form

    expect(page).to have_selector("input[class='return-home']")
  end
end

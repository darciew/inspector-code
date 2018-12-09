# frozen_string_literal: true

feature 'Return to Homepage' do
  scenario 'Can see a button that would return them to the homepage' do
    fill_in_form('apple')

    expect(page).to have_selector("input[class='return-home']")
  end

  scenario 'Can click back to the homepage from the /results page' do
    fill_in_form('apple')
    click_on 'Try Another?'

    expect(page).to have_current_path '/'
  end
end

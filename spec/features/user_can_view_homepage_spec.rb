# frozen_string_literal: true

feature 'Homepage' do
  scenario 'Can visit the homepage' do
    visit '/'

    expect(page).to have_content('Inspector Code')
    expect(page).to have_css('.homepage-title')
  end
end

# frozen_string_literal: true

def fill_in_form
  visit '/'
  fill_in 'username', with: 'apple'
  click_on 'Submit'
end

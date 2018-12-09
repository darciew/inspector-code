# frozen_string_literal: true

def fill_in_form(username)
  visit '/'
  fill_in 'username', with: username
  click_on 'Submit'
end

def fill_in_form_wrong(invalid_username)
  visit '/'
  fill_in 'username', with: invalid_username
  click_on 'Submit'
end

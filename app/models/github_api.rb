# frozen_string_literal: true

require 'httparty'

class GithubApi
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def repos
    response = HTTParty.get("https://api.github.com/users/#{username}/repos")
  end
end

# frozen_string_literal: true

require 'httparty'

class GithubApi
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def repositories
    response = HTTParty.get("https://api.github.com/users/#{username}/repos")
    JSON.parse(response.body)
  end
end

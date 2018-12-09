# frozen_string_literal: true

require 'httparty'
require_relative 'github_api'

class Results
  attr_reader :languages

  def initialize(github_api = Github.new(username))
    @github_api = github_api
    @languages = []
  end

  def repo_languages
    @github_api.repos.each do |repo|
    @languages << repo['language']
    end
  end
end

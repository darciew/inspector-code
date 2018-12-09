# frozen_string_literal: true

require 'httparty'

class Results
  attr_reader :languages

  def initialize(github_api = Github.new(username))
    @github_api = github_api
    @languages = []
  end

  def repository_languages
    @github_api.repositories.each do |repository|
      @languages << repository['language']
    end
  end

  def favourite_language
    repository_languages
    @languages.group_by(&:itself).values.max_by(&:size).first
  end
end

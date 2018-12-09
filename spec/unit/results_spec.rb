# frozen_string_literal: true

describe Results do
  let(:parsed_response) { JSON.parse(File.read('./spec/fixtures/mock_repos.json')) }
  let(:mock_api) { instance_double('mock_api', repos: parsed_response) }
  let(:results) { Results.new(mock_api) }

  describe '#repo_languages' do
    it 'adds a repo\'s dominant language to the languages array' do
      results.repo_languages
      expect(results.languages.length).to eq 3
    end
  end
end

# frozen_string_literal: true

describe Results do
  let(:parsed_response) { JSON.parse(File.read('./spec/fixtures/mock_repos.json')) }
  let(:mock_api) { instance_double('mock_api', repositories: parsed_response) }
  let(:results) { Results.new(mock_api) }

  describe '#repo_languages' do
    it 'adds a repo\'s dominant language to the languages array' do
      results.repository_languages
      expect(results.languages.length).to eq 3
    end
  end

  describe '#favourite_language' do
    it 'returns a favourite language' do
      expect(results.favourite_language).to eq 'Ruby'
    end
  end
end

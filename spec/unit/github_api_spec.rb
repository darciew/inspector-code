# frozen_string_literal: true

describe GithubApi do
  let(:username) { 'username' }
  subject(:github_api) { described_class.new(username) }

  describe '#repos' do
    let(:github_url) { "https://api.github.com/users/#{username}/repos" }
    let(:github_response_body) { 'response_body' }
    let(:github_response) { instance_double(HTTParty::Response, body: github_response_body) }

    before(:each) do
      allow(HTTParty).to receive(:get).and_return(github_response)
      allow(JSON).to receive(:parse)

      github_api.repos
    end

    it 'fetches the repos from Github api' do
      expect(HTTParty).to have_received(:get).with(github_url)
    end

    it 'parses the Github response' do
      expect(JSON).to have_received(:parse).with(github_response_body)
    end
  end
end

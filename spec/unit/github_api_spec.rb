describe GithubApi do
  let(:username) { 'username' }
  subject(:github_api) { described_class.new(username) }

  describe '#repos' do
    let(:github_url) { "https://api.github.com/users/#{username}/repos" }
    let(:github_response_body) { 'response_body' }
    let(:github_response) { instance_double(HTTParty::Response, body: github_response_body) }

    it 'fetches the repos from Github api' do
      allow(HTTParty).to receive(:get).and_return(github_response)
      github_api.repos
      expect(HTTParty).to have_received(:get).with(github_url)
    end
  end
end

require_relative 'helper'

describe Author do
	it 'has a twitter handle' do
		author = Author.create!(name: 'Ben', twitter_handle: '@benlovell')
		author.twitter_handle.must_equal('@benlovell')
	end

	it 'has a github profile' do
		skip
		author = Author.create!(name: 'Ben', github_profile: 'something')
		author.twitter_handle.must_equal('something')
	end
end
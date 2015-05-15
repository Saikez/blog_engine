require 'twitter'

class Tweeter
	def initialize(author)
		@author = author
	end

	def tweet
		client.update("Hey #{@author.twitter_handle}! Thanks for the dat paste rice, dude.")
	end

	def client
		client ||= Twitter::REST::Client.new do |config|
			config.consumer_key        = "Omnomnomnomnomnom"
			config.consumer_secret     = ">.> <.< >.> ...... omnomnom"
			config.access_token        = "Oh, shiny!"
			config.access_token_secret = "Oh, another shiny!"
		end
	end
end
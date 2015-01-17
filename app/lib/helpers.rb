require 'twitter'

module Pakyow::Helpers
  def twitter_client
    @client ||= Twitter::REST::Client.new do |client|
      client.consumer_key         = config.app.twitter_consumer_key
      client.consumer_secret      = config.app.twitter_consumer_secret
      client.access_token         = config.app.twitter_access_token
      client.access_token_secret  = config.app.twitter_access_token_secret
    end
  end
end

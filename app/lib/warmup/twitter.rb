require 'twitter'

module Warmup
  module Twitter
    def self.client(config = Pakyow::Config.app)
      @client ||= ::Twitter::REST::Client.new do |client|
        client.consumer_key         = config.twitter_consumer_key
        client.consumer_secret      = config.twitter_consumer_secret
        client.access_token         = config.twitter_access_token
        client.access_token_secret  = config.twitter_access_token_secret
      end
    end
  end
end

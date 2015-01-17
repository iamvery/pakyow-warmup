require 'bundler/setup'
require 'dotenv'
Dotenv.load

require 'pakyow'

Pakyow::App.define do
  configure :global do
    # put global config here and they'll be available across environments
    app.name = 'Pakyow'

    app.twitter_consumer_key = ENV['TWITTER_CONSUMER_KEY']
    app.twitter_consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
    app.twitter_access_token = ENV['TWITTER_ACCESS_TOKEN']
    app.twitter_access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
  end

  configure :development do
    # put development config here
  end

  configure :prototype do
    # an environment for running the front-end prototype with no backend
    app.ignore_routes = true
  end

  configure :staging do
    # put your staging config here
  end

  configure :production do
    # put your production config here
  end
end

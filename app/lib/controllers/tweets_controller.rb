require 'app/lib/warmup/twitter'

class TweetsController
  def initialize(params, view)
    @params = params
    @view = view
  end

  def index(twitter_client = Warmup::Twitter.client)
    tweets = twitter_client.search('#programming', result_type: 'recent')
      .take(10)
      .to_a

    view
      .scope(:tweet)
      .apply(tweets)
  end

  def show(twitter_client = Warmup::Twitter.client)
    tweet = twitter_client.status(params[:tweet_id])

    view
      .scope(:tweet)
      .apply(tweet)
  end

  private

  attr_reader :params, :view
end

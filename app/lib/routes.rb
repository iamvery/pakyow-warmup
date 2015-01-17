Pakyow::App.routes do
  restful :tweet, '/' do
    list do
      tweets = twitter_client.search('#programming', result_type: 'recent')
        .take(10)
        .to_a

      view
        .scope(:tweet)
        .apply(tweets)
    end

    show do
      tweet = twitter_client.status(params[:tweet_id])

      view
        .scope(:tweet)
        .apply(tweet)
    end
  end
end

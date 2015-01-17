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
  end
end

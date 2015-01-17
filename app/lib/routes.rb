require 'app/lib/controllers/tweets_controller'

Pakyow::App.routes do
  restful :tweet, '/' do
    list do
      TweetsController
        .new(params, view)
        .index
    end

    show do
      TweetsController
        .new(params, view)
        .show
    end
  end
end

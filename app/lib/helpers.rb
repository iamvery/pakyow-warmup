require 'app/lib/warmup/twitter'

module Pakyow::Helpers
  def twitter_client
    Warmup::Twitter.client
  end
end

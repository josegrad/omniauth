require 'omniauth/oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    #
    # Authenticate to Moo via OAuth and retrieve basic user information.
    # Usage:
    #    use OmniAuth::Strategies::Moo, 'consumerkey', 'consumersecret'
    #
    class Moo < OmniAuth::Strategies::OAuth
      def initialize(app, consumer_key = nil, consumer_secret = nil, options = {}, &block)
        opts = {
          :site               => "https://www.moo.com/api/service/",
          :request_token_path => "https://secure.moo.com/oauth/request_token.php",
          :access_token_path  => "https://secure.moo.com/oauth/access_token.php",
          :authorize_url      => "https://secure.moo.com/oauth/authorize.php"
        }
        super(app, :moo, consumer_key, consumer_secret, opts, options, &block)
      end      
    end
  end
end




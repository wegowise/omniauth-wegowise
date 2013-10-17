require 'omniauth-oauth'

module OmniAuth
  module Strategies
    class WegoWise < OmniAuth::Strategies::OAuth

      option :name, 'wegowise'

      option :client_options, {:site => 'https://www.wegowise.com'}

      uid { raw_info['id'] }

      info do
        {:username => raw_info['username']}
      end

      extra do
        {'raw_info' => raw_info}
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/oauth/user').body)
      end
    end
  end
end

OmniAuth.config.add_camelization 'wegowise', 'WegoWise'

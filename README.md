# OmniAuth::WegoWise

[OmniAuth](https://github.com/intridea/omniauth) strategy for the
[WegoWise API](https://www.wegowise.com/api).

## Installation

Add `gem 'omniauth-wegowise'` to your application's Gemfile and run the
`bundle` command to install it via Bundler.

You may also install the gem directly by running
`gem install omniauth-wegowise`.


## Usage

[Register your app](https://www.wegowise.com/api/register) with WegoWise to
obtain your application's consumer key and secret credentials. Your app's
OmniAuth configuration will use those credentials.

### Rack app

```ruby
use OmniAuth::Builder do
  provider :wegowise, ENV['CONSUMER_TOKEN'], ENV['CONSUMER_SECRET']
end
```

### Rails app

In a Rails app, you could place this code in an initializer such as
`config/initializers/omniauth.rb`.

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :wegowise, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end
```



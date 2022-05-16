# SpreeNewsSubscription

## Installation

1. Add this extension to your Gemfile with this line:

        gem 'spree_news_subscription', github: 'mrbrdo/spree_news_subscription'

2. Install the gem using Bundler:

        bundle install

You can use the generator to install migrations and append spree_mobility assets to
your app spree manifest file.

    rails g spree_news_subscription:install

3. Restart your server

        If your server was running, restart it so that it can find the assets properly.

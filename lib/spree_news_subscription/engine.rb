module SpreeNewsSubscription
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_news_subscription'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    config.to_prepare do
      class ::Spree::Order
        set_callback :updating_from_params, :before, :update_user_news_subscription

        def update_user_news_subscription
          if @updating_params[:news_subscribe].present? && email.present?
            news_subscription =
              NewsSubscription.find_or_initialize_by(email: email)
            news_subscription.enabled = (@updating_params[:news_subscribe] == '1')
            news_subscription.save
          end
        end
      end
    end
  end
end

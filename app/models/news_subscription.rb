class NewsSubscription < ActiveRecord::Base
  def self.enabled_for?(email)
    if ns = find_by(email: email)
      ns.enabled
    else
      true
    end
  end
end

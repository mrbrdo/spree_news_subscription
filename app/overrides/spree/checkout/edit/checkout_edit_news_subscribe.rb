Deface::Override.new(
  virtual_path:  'spree/checkout/edit',
  name:          'checkout_edit_news_subscribe',
  insert_before: 'div#accept_terms_error',
  sequence: 150, # after spree_terms
  text: <<-HTML

                <%= hidden_field_tag 'news_subscribe', '0' %>
                <%= label_tag 'news_subscribe_checkbox' do %>
                  <%= check_box_tag 'news_subscribe', '1', NewsSubscription.enabled_for?(@order.email), id: 'news_subscribe_checkbox' %>
                  <%= Spree.t(:payment_news_subscribe_label) %>
                <% end %>

        HTML
)

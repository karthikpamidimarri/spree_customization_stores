Deface::Override.new(virtual_path: 'spree/orders/edit',
  name: 'update_empty_cart_product_path_store_path',
  replace: '[data-hook="empty_cart"]',
  text: "
    <div class='alert alert-info'><%= Spree.t(:your_cart_is_empty) %></div>
    <% if session[:supplier_id] != nil %><p><%= link_to Spree.t(:continue_shopping), spree.supplier_path(session[:supplier_id]), class: 'btn btn-default' %></p><% else %>
    <p><%= link_to Spree.t(:continue_shopping), spree.root_path, class: 'btn btn-default' %></p><% end %>
  ")
Deface::Override.new(virtual_path: 'spree/orders/edit',
                     name: 'update_product_path_store_path',
                     replace: 'p#clear_cart_link',
                     text: "
 <p id='clear_cart_link' data-hook>
          <%= submit_tag Spree.t(:empty_cart), class: 'btn btn-default' %>
          <%= Spree.t(:or) %>
          <% if session[:supplier_id] != nil %><%= link_to Spree.t(:continue_shopping), spree.supplier_path(session[:supplier_id]), class: 'continue' %><% else %>
          <%= link_to Spree.t(:continue_shopping), spree.root_path, class: 'continue' %><% end %>
        </p>
  ")
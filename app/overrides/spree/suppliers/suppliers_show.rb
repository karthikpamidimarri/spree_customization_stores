Deface::Override.new(virtual_path: 'spree/suppliers/show',
                     name: 'remove_supplier_location',
                     remove: 'div#supplier-location'
                     )
Deface::Override.new(:virtual_path => 'spree/suppliers/show',
                     :name => "add_link_for_supplier_image",
                     :insert_top => "div#supplier-profile-picture",
                     :text => "<%= link_to spree.supplier_path(@supplier) do%>"
)
Deface::Override.new(:virtual_path => 'spree/suppliers/show',
                     :name => "close_link_for_supplier_image",
                     :insert_bottom => "div#supplier-profile-picture",
                     :text => "<% end %>"
)


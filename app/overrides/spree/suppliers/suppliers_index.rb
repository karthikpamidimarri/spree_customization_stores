Deface::Override.new(:virtual_path => 'spree/suppliers/index',
                     :name => "remove_supplier_id_from_link",
                     :replace => "erb[loud]:contains('link_to spree.supplier_path(supplier.id) do')",
                     :text => "<%= link_to spree.supplier_path(supplier) do%>"
)

Deface::Override.new(:virtual_path => 'spree/suppliers/index',
                     :name => "add_link_for_supplier_image_on_index_page",
                     :insert_before => "erb[loud]:contains('image_tag supplier.profile_picture.url(:medium)')",
                     :text => "<%= link_to spree.supplier_path(supplier) do%>"
)

Deface::Override.new(:virtual_path => 'spree/suppliers/index',
                     :name => "close_link_for_supplier_image_on_index_page",
                     :insert_after => "erb[loud]:contains('image_tag supplier.profile_picture.url(:medium)')",
                     :text => "<% end %>"
)

Deface::Override.new(:virtual_path => 'spree/suppliers/index',
                     :name => "link_fields_removed",
                     :replace => "erb[loud]:contains('link_to truncate')",
                     :text => "					<%= link_to spree.supplier_path(supplier) do%>
							<% truncate(supplier.name, :length => 50) %>
					<% end %>"
)
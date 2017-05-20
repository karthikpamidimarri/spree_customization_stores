Deface::Override.new(:virtual_path => 'spree/suppliers/_products',
                     :name => "change_supplier_instance_variable_name",
                     :replace => "erb[silent]:contains('if @supplier.products.any?')",
                     :text => "<% if @supplier_products.any? %>"
)

Deface::Override.new(:virtual_path => 'spree/suppliers/_products',
                     :name => "change_supplier_instance_variable_name_2",
                     :replace => "erb[silent]:contains('@supplier.products.each do |product|')",
                     :text => "<% @supplier_products.each do |product| %>"
)





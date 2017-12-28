Deface::Override.new(:virtual_path => 'spree/admin/stock_locations/_form',
                     :name => "stock_location_backorderable_default",
                     :replace => "erb[loud]:contains('f.check_box :backorderable_default')",
                     :text => "<%= f.check_box  :backorderable_default ,:disabled => true, :readonly => true  %>"
)

Deface::Override.new(:virtual_path => 'spree/admin/stock_locations/_form',
                     :name => "stock_location_propagate_all_variants",
                     :replace => "erb[loud]:contains('f.check_box :propagate_all_variants')",
                     :text => "<%= f.check_box  :propagate_all_variants ,:disabled => true, :readonly => true  %>"
)

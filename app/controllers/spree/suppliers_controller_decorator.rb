module Spree
  SuppliersController.class_eval  do

    def show
      params[:q] ||= {}
      params[:q][:meta_sort] ||= "name.asc"
      @supplier = Spree::Supplier.friendly.find(params[:id])
      @search = @supplier.products.search(params[:q])
      @supplier_products = @search.result
      session[:supplier_id] = params[:id]
    end

  end
end

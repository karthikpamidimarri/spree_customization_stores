module Spree
   StoreController.class_eval  do
     before_action :setRansack

     private
     def setRansack
       @searcher = build_searcher(params.merge(include_images: true))
       @products = @searcher.retrieve_products
       @search = @products.search(params[:q])
     end
  end
end

module Spree
   UserSessionsController.class_eval  do
     before_action :setRansack

     private
     def setRansack
       @search = Spree::Product.search(params[:q])
     end
  end
end

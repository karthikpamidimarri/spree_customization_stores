module Spree
  module Api
    module V1
	   OrdersController.class_eval  do
	     include Spree::Core::ControllerHelpers::Order

			 def create
          authorize! :create, Order
          order_user = if @current_user_roles.include?('admin') && order_params[:user_id]
            Spree.user_class.find(order_params[:user_id])
          else
            current_api_user
          end

          import_params = if @current_user_roles.include?("admin")
            params[:order].present? ? params[:order].permit! : {}
          else
            order_params
          end

        @order = Spree::Core::Importer::Order.import(order_user, import_params)
        @current_order = current_order
        respond_with(@current_order, default_template: :show, status: 201)
       end
     end
    end
  end
  end

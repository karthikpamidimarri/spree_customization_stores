# module Spree
#   OrdersController.class_eval  do
#     def update
#       if @order.contents.update_cart(order_params)
#         if request.xhr?
#           respond_to do |format|
#             format.json { render json: @order.to_json }
#           end
#         else
#           respond_with(@order) do |format|
#             format.html do
#               if params.has_key?(:checkout)
#                 @order.next if @order.cart?
#                 redirect_to checkout_state_path(@order.checkout_steps.first)
#               else
#                 redirect_to cart_path
#               end
#             end
#           end
#         end
#       else
#         if request.xhr?
#           respond_to do |format|
#             format.json { render json: @order.to_json }
#           end
#         else
#           respond_with(@order)
#         end
#       end
#     end
#
#
#     def populate
#       order    = current_order(create_order_if_necessary: true)
#       variant  = Spree::Variant.find(params[:variant_id])
#       quantity = params[:quantity].to_i
#       options  = params[:options] || {}
#
#       # 2,147,483,647 is crazy. See issue #2695.
#       if quantity.between?(1, 2_147_483_647)
#         begin
#           order.contents.add(variant, quantity, options)
#         rescue ActiveRecord::RecordInvalid => e
#           error = e.record.errors.full_messages.join(", ")
#         end
#       else
#         error = Spree.t(:please_enter_reasonable_quantity)
#       end
#
#       if error
#         if request.xhr?
#           respond_to do |format|
#             format.json { render :json => { :error_message => error.to_json }, :status => 500 }
# =begin
#             flash[:error] = error
# =end
#           end
#         else
#           flash[:error] = error
#           redirect_back_or_default(spree.root_path)
#         end
#       else
#         if request.xhr?
#           respond_to do |format|
#             format.json { render json: order.to_json }
#           end
#         else
#           respond_with(order) do |format|
#             format.html { redirect_to cart_path }
#           end
#         end
#       end
#     end
#   end
# end


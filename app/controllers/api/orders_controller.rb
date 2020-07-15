class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    if @product.save
      #happy path
      render "show.json.jb"
    else
      #sad path
      render "errors.json.jb", status: :unprocessable_entity
    end
  end
end

class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @order = PayForm.new
  end
  
end

class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @order = PayForm.new
  end

  def create
    @order = PayForm.new(order_params)
    if @order.valid? #バリデーションチェック
      @order.save #trueなら、フォームオブジェクトのsaveメソッドの呼び出し
      redirect_to root_path #処理後はリダイレクト
    else
      @item = Item.find(params[:item_id]) # indexで必要な@itemを再定義
      render 'index' # indexの再描写
    end
  end

  private

  def order_params
    params.require(:pay_form).permit(
      :postal_code,
      :prefecture_id,
      :city,
      :address,
      :building,
      :phone_number
      ).merge(user_id: current_user.id,item_id: params[:item_id])
  end
  
end

# これは購入機能のformオブジェクトのモデル

class PayForm
  include ActiveModel::Model
  #Active Recordの場合と同様に form_with や render などのヘルパーメソッドが使用できるようになる

 attr_accessor  :postal_code, :prefecture_id, :city, :address, :building, :phone_number, :user_id ,:item_id
  # フォームオブジェクトで使用する値を定義している（読み書きができるようになっている）


end
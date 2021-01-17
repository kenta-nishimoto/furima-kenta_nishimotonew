class Item < ApplicationRecord

  # Active_hashとのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :prefecture
  belongs_to :scheduled_delivery

  # <<アクティブストレージの設定関連>>
  has_one_attached :image

  # <<アソシエーション>>
  belongs_to :user

  # <<バリデーション>>
  with_options presence: true do
    validates :image
    validates :name
    validates :info
    validates :price
  end

  # 金額の範囲
  validates_inclusion_of :price, in: 300..9999999
  # ..:rubyの範囲オブジェクト　https://docs.ruby-lang.org/ja/latest/class/Range.html

  # numericalityを使うのもあります！
  # validates :price, numericality: { greater_than_or_equal_to: 300, 
  #                                   less_than_or_equal_to: 9_999_999 }
  #                                   

  # 選択関係で「---」のままになっていないか検証
  with_options presence: true,numericality: { other_than: 0 } do
    validates :category_id
    validates :sales_status_id
    validates :shipping_fee_status_id
    validates :prefecture_id
    validates :scheduled_delivery_id
  end

end
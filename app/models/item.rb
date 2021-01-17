class Item < ApplicationRecord
  berongs_to :user
  has_one_attached :image
end

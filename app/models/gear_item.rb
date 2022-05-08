class GearItem < ApplicationRecord
  belongs_to(
     :owner,
     class_name: 'User',
     foreign_key: 'user_id',
     inverse_of: :gear_items
  )
  has_one_attached :item_images
end

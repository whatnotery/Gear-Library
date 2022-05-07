class GearItem < ApplicationRecord
  belongs_to(
     :owner,
     class_name: 'User',
     foreign_key: 'user_id',
     inverse_of: :gear_items
  )
  has_many_attached :item_images
end

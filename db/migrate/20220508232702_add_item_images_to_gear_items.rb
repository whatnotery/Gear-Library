class AddItemImagesToGearItems < ActiveRecord::Migration[7.0]
  def change
    add_column :gear_items, :item_images, :binary
  end
end

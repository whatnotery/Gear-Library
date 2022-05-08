class AddBorrowerToGearItems < ActiveRecord::Migration[7.0]
  def change
    add_column :gear_items, :borrower, :string
  end
end

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.boolean :is_admin
      t.binary :avatar

      t.timestamps
    end
    add_index :users, :email
  end
end

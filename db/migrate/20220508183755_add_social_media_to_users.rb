class AddSocialMediaToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :social_media, :string
  end
end

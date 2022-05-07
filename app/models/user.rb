class User < ApplicationRecord
    passwordless_with :email
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    has_one_attached :avatar
    has_many(
      :gear_items,
      class_name: 'GearItem',
      foreign_key: 'user_id',
      inverse_of: :owner
    )
    def full_name
        [first_name, last_name].join(' ')
      end

end

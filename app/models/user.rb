class User < ApplicationRecord
    passwordless_with :email
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    has_one_attached :avatar
    def full_name
        [first_name, last_name].join(' ')
      end

end

class User < ApplicationRecord
    has_many :characters

    validates :email, presence: true, uniqueness: true
    has_secure_password
end

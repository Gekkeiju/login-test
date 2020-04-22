class User < ApplicationRecord

    has_secure_password

    validates :username, presence: true, uniqueness: { case_sensitive: true }

    validates :password, 
        format: { 
            with: /\A*\d+/x,
            message: "Must have a number"
        },
        length: { 
            minimum: 8,
            too_short: "Must be at least 8 characters long"
        }

end

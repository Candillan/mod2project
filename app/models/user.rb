class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :games, through: :reviews

    validates :username, presence: true,  uniqueness: {case_sensitive: false}
    
    #may not want to have this validation in there during development
    #validates :password, length: { in: 6..15}

    
end
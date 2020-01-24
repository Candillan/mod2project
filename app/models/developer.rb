class Developer < ApplicationRecord
    has_secure_password
    has_many :games

    validates :username, presence: true,  uniqueness: {case_sensitive: false}

end
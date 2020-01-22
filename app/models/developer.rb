class Developer < ApplicationRecord
    has_many :games

    validates :username, presence: true,  uniqueness: {case_sensitive: false}
end
class Game < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :developer

    validates :name, presence: true
    validates :description, length: { in: 10..500 }
    validate :year_cannot_be_in_future


    def year_cannot_be_in_future
        if !year
            errors.add(:year, "must be present")
        elsif year > Time.now.year
            errors.add(:year, "cannot be in the future")
        end 
    end 


end
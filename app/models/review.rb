class Review < ApplicationRecord
    belongs_to :game
    belongs_to :user
    #validates :rating, presence: true
    validates :title, presence: true
    validate :rating_range
    def rating_range
        if rating == nil
            errors.add(:rating, "must be included in the review")
        elsif rating < 0 || rating > 10
            errors.add(:rating, "must be on a scale from 0-10")
        end
    end
end

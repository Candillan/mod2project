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

    #methods that could be used for analytics

    #just gets all ratings and averages it

    def self.average_review_rating_raw 
        my_arr = Review.all.pluck(:rating)
        running_total = 0
        my_arr.each do |num|
            running_total += num
        end 
        (running_total / my_arr.length).to_f
    end

end

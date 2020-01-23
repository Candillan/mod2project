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

    def critic_review 
        if self.reviews.count > 0
            critic_review_scores = []
            my_arr = self.reviews.select do |review|
                review.user.critic
            end
            if my_arr.count < 0
                return nil
            else  
                arr = my_arr.map do |review|
                    review.rating.to_f
                end
                sum_arr = arr.reduce do |n, sum|
                    n + sum
                end
                (sum_arr / arr.count).round(2)
            end 
        end 
    end 

    def audience_review
        if self.reviews.count > 0 
            my_arr = self.reviews.select do |review|
                !review.user.critic
            end 
            if my_arr.length > 0 
            arr = my_arr.map do |review|
                review.rating.to_f
            end
            sum_arr = arr.reduce do |n, sum|
                n + sum
            end 
            (sum_arr / arr.count).round(2)
        end 
        end 
    end

    def weighted_review
        if !self.audience_review && !self.critic_review
            return "This game has not been reviewed"
        elsif
            !self.audience_review && self.critic_review
            return self.critic_review
        elsif
            self.audience_review && !self.critic_review
            return self.audience_review
        else 
            weighted_sum = (self.critic_review * 0.65).round(2) + (self.audience_review * 0.35).round(2)
        end 
    end

    

end
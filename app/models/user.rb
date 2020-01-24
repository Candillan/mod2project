class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :games, through: :reviews

    validates :username, presence: true,  uniqueness: {case_sensitive: false}
    
    #may not want to have this validation in there during development
    #validates :password, length: { in: 6..15}

    #analytics methods

    def self.total_users
        User.all.count
    end 

    def average_review
        if self.reviews.count > 0 
            running_total = 0
            self.reviews.each do |review|
                running_total += review.rating
            end 
            (running_total / self.reviews.count).to_f
        else 
            return 0
        end 
    end 

    def self.harshest_critic
        my_arr = User.all.sort do |user|
                    user.average_review
                end 
        my_arr[-1]        
    end 

    
end
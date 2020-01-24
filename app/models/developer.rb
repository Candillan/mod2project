class Developer < ApplicationRecord
    has_secure_password
    has_many :games

    validates :username, presence: true,  uniqueness: {case_sensitive: false}

    #analytics methods

    def self.total_devs
        Developer.all.count
    end 

    def self.oldest_dev
        Developer.all.max_by do |dev|
            dev.age
        end 
    end 

    def self.most_experienced_dev
        Developer.all.max_by do |dev|
            dev.experience 
        end 
    end 


end
class User < ApplicationRecord
    has_many :gratitude_journals
    has_many :todo_lists
    has_many :repices
    has_many :exercise
   has_many :quotes
    # 1
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    #2
    def full_name_with_email
        "#{self.first_name} #{self.last_name} email: #{self.last_name}"
    end
    #3
    def self.oldest_user_by_name
        order(:birthdate).limit(1).first.full_name
    end
    #4
    def self.youngest_user_name_and_age
        order(:birthdate).last.full_name
    end
    #5
    def self.youngest_user
        order(:birthdate).last
    end
    def self.oldest_user
        order(:birthdate).limit(1).first
    end
    #6
    def age_of
        now = Time.now.utc.to_date.year
        age = now - self.birthdate.year
        age
    end
    #7
    

end

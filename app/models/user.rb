class User < ApplicationRecord
    has_many :gratitude_journals
    has_many :todo_lists
    has_many :repices
    has_many :exercise
    has_many :quotes

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def full_name_with_email
        "#{self.first_name} #{self.last_name} email: #{self.last_name}"
    end

    def oldest_user
        
    end
    
end

class User < ApplicationRecord
    has_many :gratitude_journals
    has_many :todo_lists
    has_many :repices
    has_many :exercise
    has_many :quotes

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    
end

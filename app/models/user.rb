class User < ApplicationRecord
    has_many :gratitude_journals
    has_many :todo_lists

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    
end

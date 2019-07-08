class User < ApplicationRecord
    has_many :gratitude_journals
    has_many :todo_lists
end

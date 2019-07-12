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
        person = self.youngest_user
        "#{person.full_name.titleize} is #{person.age_of}"
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
    #13
    def self.all_gratitude_entries
        all.map{|entry| entry.user.count }
    end
    #14
    def self.most_greatful_user
        all.max_by{|user| user.gratitude_journals.count}
    end
    #15 
    def self.busiest_user
        all.max_by{|user| user.todo_lists.count}
    end

    #16
    def oldest_task
        if self.todo_lists.empty?
            "No active tasks"
        else
            self.todo_lists.first.task_name
        end
    end
    #19
    def task_due
        self.todo_lists.select {|task| task.due_date == Date.today}
    end

    #20
    def upcoming_tasks
        self.todo_lists.select {|task| task.due_date > Date.today}
    end
    
end

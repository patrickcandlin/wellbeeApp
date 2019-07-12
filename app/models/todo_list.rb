class TodoList < ApplicationRecord
  belongs_to :user
  validates :task_name, presence: true
  validates :task_content, presence: true
  validates :user_id, presence: true
  #17
  def self.oldest_to_do
    all.first
  end

  #18
  def self.past_due
    all.select{|task| task.due_date < Date.today}
  end

  #19
  


end

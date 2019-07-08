class CreateTodoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_lists do |t|
      t.string :task_name
      t.string :task_content
      t.date :due_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

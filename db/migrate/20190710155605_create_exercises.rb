class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :exercise_title
      t.string :exercise_content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

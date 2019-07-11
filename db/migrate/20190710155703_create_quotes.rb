class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :quote_content
      t.string :quote_author
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

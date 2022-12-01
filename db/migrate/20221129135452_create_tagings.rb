class CreateTagings < ActiveRecord::Migration[7.0]
  def change
    create_table :tagings do |t|
      t.integer :tag_id, foreign_key: true
      t.integer :book_id, foreign_key: true

      t.timestamps
    end
  end
end

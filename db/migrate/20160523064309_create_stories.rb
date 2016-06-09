class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :speaker
      t.string :image
      t.text :content
      t.integer :next_id

      t.timestamps null: false
    end
  end
end

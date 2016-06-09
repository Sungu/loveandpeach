class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :story, index: true, foreign_key: true
      t.text :choices

      t.timestamps null: false
    end
  end
end

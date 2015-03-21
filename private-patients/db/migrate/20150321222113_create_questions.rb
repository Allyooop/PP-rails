class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, :unique => true
      t.text :body
      t.integer :priority, default: 0

      t.timestamps null: false
    end
  end
end

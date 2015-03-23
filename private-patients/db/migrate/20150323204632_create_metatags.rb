class CreateMetatags < ActiveRecord::Migration
  def change
    create_table :metatags do |t|
      t.string :title
      t.string :description
      t.string :keywords
      t.string :author

      t.timestamps null: false
    end
  end
end

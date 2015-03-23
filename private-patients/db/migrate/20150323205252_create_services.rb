class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.string :department
      t.string :specialty
      t.text :body
      t.string :banner
      t.references :metatag, index: true
      t.text :sidebar

      t.timestamps null: false
    end
    add_foreign_key :services, :metatags
  end
end

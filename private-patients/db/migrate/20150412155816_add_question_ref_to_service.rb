class AddQuestionRefToService < ActiveRecord::Migration
  def change
    add_reference :services, :question, index: true
    add_foreign_key :services, :questions
  end
end

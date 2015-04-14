class AddServiceRefToQuestion < ActiveRecord::Migration
  def change
    add_reference :questions, :service, index: true
    add_foreign_key :questions, :services
  end
end

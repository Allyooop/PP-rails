class AddServiceToMetatag < ActiveRecord::Migration
  def change
    add_reference :metatags, :service, index: true
    add_foreign_key :metatags, :services
  end
end

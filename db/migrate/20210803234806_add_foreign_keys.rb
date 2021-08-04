class AddForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :shifts, :users
    add_foreign_key :users, :organizations
  end
end

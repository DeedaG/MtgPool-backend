class AddUserIdToPools < ActiveRecord::Migration[5.2]
  def change
    add_column :pools, :user_id, :integer
  end
end

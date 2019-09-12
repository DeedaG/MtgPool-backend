class AddCommentsToPools < ActiveRecord::Migration[5.2]
  def change
    add_column :pools, :comments, :text
  end
end

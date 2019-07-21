class ChangeTermToBeIntegerInLoans < ActiveRecord::Migration[5.2]
  def change
    change_column :loans, :term, :integer
  end
end

class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.string :borrower
      t.string :term
      t.string :amount
      t.string :rate
      t.string :investorId
      t.string :poolId
      t.string :close_date

      t.timestamps
    end
  end
end

class CreatePools < ActiveRecord::Migration[5.2]
  def change
    create_table :pools do |t|
      t.string :investorId
      t.string :pool_amount

      t.timestamps
    end
  end
end

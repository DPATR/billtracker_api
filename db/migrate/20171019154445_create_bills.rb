class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :creditor
      t.string :billing_month
      t.integer :amount_due

      t.timestamps
    end
  end
end

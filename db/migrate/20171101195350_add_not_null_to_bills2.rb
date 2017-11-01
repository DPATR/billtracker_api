# frozen_string_literal: true
# adding not null constraints to bills properties

class AddNotNullToBills2 < ActiveRecord::Migration[5.1]
  def change
    change_column :bills, :creditor, :string, null: false
    change_column :bills, :billing_month, :string, null: false
    change_column :bills, :amount_due, :integer, null: false
  end
end

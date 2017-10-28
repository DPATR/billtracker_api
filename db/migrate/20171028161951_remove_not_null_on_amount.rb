# frozen_string_literal: true
# this is backing out the not null constraint
class RemoveNotNullOnAmount < ActiveRecord::Migration[5.1]
  def change
    change_column :bills, :creditor, :string, null: true
    change_column :bills, :billing_month, :string, null: true
    change_column :bills, :amount_due, :integer, null: true
  end
end

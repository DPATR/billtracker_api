class BillSerializer < ActiveModel::Serializer
  attributes :id, :creditor, :billing_month, :amount_due, :user_id, :user
end

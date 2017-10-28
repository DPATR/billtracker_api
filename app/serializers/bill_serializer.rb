# modified 10-27-17 to remove :user_id and :user so they are not passed back to the client
class BillSerializer < ActiveModel::Serializer
  attributes :id, :creditor, :billing_month, :amount_due
end

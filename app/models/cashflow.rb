class Cashflow < ActiveRecord::Base
  attr_accessible :amount
  belongs_to :creditor, :class_name => "User"
  belongs_to :debitor, :class_name => "User"
end

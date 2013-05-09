class Balance < ActiveRecord::Base
  belongs_to :user
  attr_accessible :credit, :debit
end

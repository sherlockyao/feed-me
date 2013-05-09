class Balance < ActiveRecord::Base
  belongs_to :user
  attr_accessible :credit, :debit

  after_initialize do
    self.credit ||= 0.00 
    self.debit ||= 0.00
  end
end

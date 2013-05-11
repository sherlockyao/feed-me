class Cashflow < ActiveRecord::Base
  attr_accessible :amount, :creditor_id, :debitor_id
  belongs_to :creditor, :class_name => "User"
  belongs_to :debitor, :class_name => "User"

  def self.clean(creditor_id, debitor_id)
    cashflows = Cashflow.where(:creditor_id => creditor_id, :debitor_id => debitor_id)
    useless_cashflows = [], amount = 0
    cashflows.each do |cashflow|
      amount += cashflow.amount
      unless amount <= 0.001
        useless_cashflows << cashflow.id
      else
        break
      end
    end
    Cashflow.destroy(useless_cashflows) if amount <= 0.001
  end

end

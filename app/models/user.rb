class User < ActiveRecord::Base
  has_one :balance
  attr_accessible :email, :name

  after_initialize do
    self.balance ||= self.build_balance
  end

  def credit(amount, debitor_id)
    debitor = User.find(debitor_id)
    Cashflow.new(:amount => amount, :debitor => debitor, :creditor => self)
    Balance.transaction do
      self.balance.credit += amount
      self.balance.save!
      debitor.balance.with_lock do
        debitor.balance.debit += amount
        debitor.balance.save!
      end
    end
  end

end

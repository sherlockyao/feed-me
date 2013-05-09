class User < ActiveRecord::Base
  has_one :balance
  attr_accessible :email, :name

  after_initialize do
    self.balance ||= self.build_balance
  end
end

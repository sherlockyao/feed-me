class User < ActiveRecord::Base
  has_one :balance
  attr_accessible :email, :name
end

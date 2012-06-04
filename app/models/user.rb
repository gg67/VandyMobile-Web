class User < ActiveRecord::Base
  attr_accessible :email, :password
  has_many :assignments
  has_many :meetings, through: :assignments
end

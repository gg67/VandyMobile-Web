class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password_digest
  has_many :assignments
  has_many :meetings, through: :assignments
  validates_presence_of :password, :on => :create  
end

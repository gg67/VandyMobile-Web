class Team < ActiveRecord::Base
  attr_accessible :name, :user_ids
  validates_presence_of :name

  has_many :team_assignments
  has_many :users, through: :team_assignments
  has_one :app
end

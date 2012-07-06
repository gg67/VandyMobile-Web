class Team < ActiveRecord::Base
  attr_accessible :name
  has_many :team_assignments
  has_many :users, through: :team_assignments
end

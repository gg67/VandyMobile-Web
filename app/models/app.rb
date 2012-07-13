class App < ActiveRecord::Base
  attr_accessible :description, :name, :os, :team_id, :team
  validates_presence_of :name, :description
  belongs_to :team
end

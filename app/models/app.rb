class App < ActiveRecord::Base
  attr_accessible :description, :name, :os, :team_id, :tagline, :image_url
  validates_presence_of :name, :description
  belongs_to :team
end

class App < ActiveRecord::Base
  attr_accessible :description, :name, :os, :team_id, :tagline, :image_url, :app_url, :repo_url
  validates_presence_of :name, :description
  belongs_to :team
end

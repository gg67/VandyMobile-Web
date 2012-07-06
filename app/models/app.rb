class App < ActiveRecord::Base
  attr_accessible :description, :name, :os
  belongs_to :team
end

class Meeting < ActiveRecord::Base
  attr_accessible :date, :day, :xcoordinate, :ycoordinate, :food, :speaker, :speaker_name, :topic, :description
  validates_presence_of :day
  has_many :assignments
  has_many :users, through: :assignments
  
end

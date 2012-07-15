class Meeting < ActiveRecord::Base
  attr_accessible :date, :day, :xcoordinate, :ycoordinate, :food, :speaker, :speaker_name, :topic, :description, :user_ids
  validates_presence_of :date, :day
  
  has_many :meeting_assignments
  has_many :users, through: :meeting_assignments
end

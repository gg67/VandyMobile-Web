class Meeting < ActiveRecord::Base
  attr_accessible :date, :day, :xcoordinate, :ycoordinate, :food, :speaker, :speaker_name, :topic
end

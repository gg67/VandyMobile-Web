class Meeting < ActiveRecord::Base
  attr_accessible :date, :day, :food, :speaker, :speaker_name, :topic
end

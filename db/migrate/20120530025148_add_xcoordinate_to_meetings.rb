class AddXcoordinateToMeetings < ActiveRecord::Migration
  def change
	add_column :meetings, :xcoordinate, :double
  end
end

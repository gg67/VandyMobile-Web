class AddYCoordinateToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :ycoordinate, :float
  end
end

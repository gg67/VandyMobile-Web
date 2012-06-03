class AddDescriptionToMeetings < ActiveRecord::Migration
  def change
		add_column :meetings, :description, :text
  end
end

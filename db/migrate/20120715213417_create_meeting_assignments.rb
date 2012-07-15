class CreateMeetingAssignments < ActiveRecord::Migration
  def change
    create_table :meeting_assignments do |t|
	  t.integer :user_id
      t.integer :meeting_id
      t.timestamps
    end
    add_index :meeting_assignments, :user_id
    add_index :meeting_assignments, :meeting_id
  end
end

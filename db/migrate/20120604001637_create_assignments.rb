class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :meeting_id

      t.timestamps
    end
    add_index :assignments, :user_id
    add_index :assignments, :meeting_id
  end
end

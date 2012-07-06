class CreateTeamAssignments < ActiveRecord::Migration
  def change
    create_table :team_assignments do |t|
	  t.integer :user_id
      t.integer :team_id
      t.timestamps
    end
    add_index :team_assignments, :user_id
    add_index :team_assignments, :team_id
  end
end

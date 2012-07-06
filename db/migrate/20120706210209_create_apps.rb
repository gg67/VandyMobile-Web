class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.integer :team_id
      t.string :name
      t.string :os
      t.text :description

      t.timestamps
    end
    add_index :apps, :team_id
  end
end

class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :day
      t.datetime :date
      t.boolean :food
      t.boolean :speaker
      t.string :speaker_name
      t.string :topic

      t.timestamps
    end
  end
end

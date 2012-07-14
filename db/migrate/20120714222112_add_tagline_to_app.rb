class AddTaglineToApp < ActiveRecord::Migration
  def change
    add_column :apps, :tagline, :text
  end
end

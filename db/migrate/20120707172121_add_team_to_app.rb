class AddTeamToApp < ActiveRecord::Migration
  class App < ActiveRecord::Base
  end
  def change
    add_column :apps, :team, :string
    App.reset_column_information
  end
end

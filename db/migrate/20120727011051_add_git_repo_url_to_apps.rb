class AddGitRepoUrlToApps < ActiveRecord::Migration
  def change
    add_column :apps, :repo_url, :string
  end
end

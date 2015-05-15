class AddGithubProfileToAuthors < ActiveRecord::Migration
  def change
  	add_column :authors, :github_profile, :string
  end
end

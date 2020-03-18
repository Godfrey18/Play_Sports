class RemoveRoleFromTeams < ActiveRecord::Migration[5.2]
  def change
  	remove_column :teams, :role,:string
  end
end

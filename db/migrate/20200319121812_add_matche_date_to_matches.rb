class AddMatcheDateToMatches < ActiveRecord::Migration[5.2]
  def change
  	add_column :matches,:match_date,:date
  end
end

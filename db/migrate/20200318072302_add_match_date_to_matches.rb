class AddMatchDateToMatches < ActiveRecord::Migration[5.2]
  def change
  	add_column :matches,:match_date,:string
  end
end

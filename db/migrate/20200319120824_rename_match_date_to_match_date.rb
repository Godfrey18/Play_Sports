class RenameMatchDateToMatchDate < ActiveRecord::Migration[5.2]
  def change
  	rename_column :matches, :match_date, :date
  end
end

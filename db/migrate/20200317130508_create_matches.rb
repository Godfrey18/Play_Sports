class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :event, foreign_key: true
      t.references :team, foreign_key: true
       t.references :away_team,references: :teams,foreign_key: {to_table: :teams}
      t.timestamps
    end
  end
end

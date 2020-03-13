class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
    	t.string :name
    	t.string :type
    	t.integer :no_players
    	t.text :info
    	t.timestamps
    end
  end
end

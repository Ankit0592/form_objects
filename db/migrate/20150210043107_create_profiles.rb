class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.integer :user_id
    	t.string :twitter
    	t.string :github
      t.timestamps
    end
  end
end

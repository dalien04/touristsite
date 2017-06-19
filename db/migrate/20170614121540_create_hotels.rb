class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|

    	t.integer :stars
    	t.string :hotel_name,null: false, :limit => 50
    	t.string :rooms,null: false, :limit => 20
    	t.string :food, :limit => 20 
    	t.string :internet, :limit => 20 
    	t.string :parking, :limit => 10 
    	t.string :sport,:limit => 50
    	t.string :entertainment, :limit => 50 
    	t.string :beach, :limit => 20  
    	t.string :service, :limit => 50

        t.references :city, index: true, :null => false

      t.timestamps null: false
    end
  end
end

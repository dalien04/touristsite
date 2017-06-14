class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|

    	t.integer :stars, null:false
    	t.string :hotel_name,null: false, :limit => 50
    	t.string :rooms,null: false, :limit => 20
    	t.string :food,null: false, :limit => 20 
    	t.string :internet,null: false, :limit => 20 
    	t.string :parking,null: false, :limit => 10 
    	t.string :sport,null: false, :limit => 50
    	t.string :entertainment,null: false, :limit => 50 
    	t.string :beach,null: false, :limit => 20  
    	t.string :service,null: false, :limit => 50

        t.references :city, index: true, :null => false

      t.timestamps null: false
    end
  end
end

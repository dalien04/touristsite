class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|

    	t.string :city_name,null: false, :limit => 20
    	t.references :country, index: true, :null => false


      t.timestamps null: false
    end
    
  end
end

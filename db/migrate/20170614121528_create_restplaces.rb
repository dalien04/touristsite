class CreateRestplaces < ActiveRecord::Migration
  def change
    create_table :restplaces do |t|

    	t.string :name, null:false, :limit => 100 
    	t.references :country, index: true, null: false
    	t.references :city, index: true, null: false
    	t.references :hotel, index: true, null: false

      t.timestamps null: false
    end
  end
end

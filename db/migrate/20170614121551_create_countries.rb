class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|

    	t.string :country_name,null: false, :limit => 20
      t.timestamps null: false
    end
  end
end

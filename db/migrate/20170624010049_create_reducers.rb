class CreateReducers < ActiveRecord::Migration
  def change
    create_table :reducers do |t|

    	t.string :model, null:false
			t.string :powers, null:false 
			t.string :input_type, null:false 
			t.string :output_type, null:false 
			t.string :ratio, null:false
			t.string :ip, null:false
			t.string :volume, null:false 
			

      t.timestamps null: false
    end
  end
end

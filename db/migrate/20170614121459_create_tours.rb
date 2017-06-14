class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|

    	t.integer :adult, null:false
    	t.integer :children, null:false
    	t.date :start_date, null:false
    	t.date :end_date, null:false
    	t.money :cost, null:false
      t.references :restplace, index: true, null: false

      t.timestamps null: false
    end
  end
end

class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|

    	t.date :open_date, null:false
    	t.date :close_date
    	t.string :dop_info, :limit => 100 
    	t.integer :status, null:false
    	t.references :tourist, index: true, null: false
    	t.references :operator, index: true
    	t.references :tour, index: true, null: false

      t.timestamps null: false
    end
  end
end

class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|

    	t.string :number_contract,null: false, :limit => 20
    	t.integer :status, null:false
    	t.date :open_date, null:false
    	t.date :pay_date
    	t.money :cost, null:false
      t.string :dop_info, :limit => 100
      t.string :payment,null: false, :limit => 20
      #t.references :request, index: true, null: false
      t.timestamps null: false
    end
  end
end

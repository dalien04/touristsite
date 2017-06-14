class CreateTourists < ActiveRecord::Migration
  def change
    create_table :tourists do |t|

    	t.string :fio, null:false, :limit => 50
			t.string :number_passport, null:false, :limit => 12 
			t.date :birth_date, null:false
			t.string :adress, null:false, :limit => 100 
			t.integer :sex, null:false
			t.string :number_telefon, null:false, :limit => 16
			t.string :email, null:false, :limit => 30
			t.string :number_interpassport, null:false, :limit => 30
	   
      t.timestamps null: false
    end
  end
end

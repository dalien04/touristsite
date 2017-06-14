class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

    	t.string :review_text, null:false, :limit => 500 
			t.date :review_date, null:false
			t.references :tourist, index: true, null: false

      t.timestamps null: false
    end
  end
end

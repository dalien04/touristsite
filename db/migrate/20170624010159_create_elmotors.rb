class CreateElmotors < ActiveRecord::Migration
  def change
    create_table :elmotors do |t|

      t.timestamps null: false
    end
  end
end

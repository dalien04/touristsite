class CreateEdrives < ActiveRecord::Migration
  def change
    create_table :edrives do |t|

      t.timestamps null: false
    end
  end
end

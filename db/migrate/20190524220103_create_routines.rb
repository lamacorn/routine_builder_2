class CreateRoutines < ActiveRecord::Migration[5.1]
  def change
    create_table :routines do |t|
      t.integer :customer_id
      t.boolean :active

      t.timestamps
    end
  end
end

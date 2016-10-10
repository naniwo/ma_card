class CreateCardAttributeMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :card_attribute_masters do |t|
      t.integer :card_id, null: false
      t.integer :attribute_type, null: false
      t.timestamps
    end

    add_index :card_attribute_masters, :card_id
    add_index :card_attribute_masters, :attribute_type
  end
end

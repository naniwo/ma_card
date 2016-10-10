class CreateCardMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :card_masters do |t|
      t.string :name, null: false
      t.string :other_name, null: false
      t.string :img_path
      t.integer :rarity, null: false
      t.integer :cost, null: false
      t.integer :arthur_type, null: false
      t.integer :skill_type, null: false
      t.string :illustrator
      t.string :cv
      t.timestamps
    end

    add_index :card_masters, :name
    add_index :card_masters, :other_name
    add_index :card_masters, :rarity
    add_index :card_masters, :cost
    add_index :card_masters, :arthur_type
    add_index :card_masters, :skill_type
  end
end

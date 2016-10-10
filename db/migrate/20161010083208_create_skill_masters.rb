class CreateSkillMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_masters do |t|
      t.integer :card_id, null: false
      t.string :name, null: false
      t.timestamps
    end

    add_index :skill_masters, :card_id
  end
end

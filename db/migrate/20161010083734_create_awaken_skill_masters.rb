class CreateAwakenSkillMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :awaken_skill_masters do |t|
      t.integer :card_id, null: false
      t.string :name, null: false
      t.timestamps
    end

    add_index :awaken_skill_masters, :card_id, unique: true
  end
end

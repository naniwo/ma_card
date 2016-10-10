class CreateCardStatusMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :card_status_masters do |t|
      t.integer :card_id, null: false
      t.integer :init_hp, default: 0
      t.integer :final_hp, default: 0
      t.integer :init_atk, default: 0
      t.integer :final_atk, default: 0
      t.integer :init_mat, default: 0
      t.integer :final_mat, default: 0
      t.integer :init_heal, default: 0
      t.integer :final_heal, default: 0
      t.integer :buff_atk, default: 0
      t.integer :buff_mat, default: 0
      t.integer :buff_def, default: 0
      t.integer :buff_mde, default: 0
      t.integer :debuff_atk, default: 0
      t.integer :debuff_mat, default: 0
      t.integer :debuff_def, default: 0
      t.integer :debuff_mde, default: 0
      t.integer :buff_heal, default: 0
      t.integer :regene, default: 0
      t.integer :turn, default: 0
      t.integer :draw, default: 0
      t.timestamps
    end

    add_index :card_status_masters, :card_id, unique: true
    add_index :card_status_masters, :init_hp
    add_index :card_status_masters, :final_hp
    add_index :card_status_masters, :init_atk
    add_index :card_status_masters, :final_atk
    add_index :card_status_masters, :init_mat
    add_index :card_status_masters, :final_mat
    add_index :card_status_masters, :init_heal
    add_index :card_status_masters, :final_heal
    add_index :card_status_masters, :buff_atk
    add_index :card_status_masters, :buff_mat
    add_index :card_status_masters, :buff_def
    add_index :card_status_masters, :buff_mde
    add_index :card_status_masters, :debuff_atk
    add_index :card_status_masters, :debuff_mat
    add_index :card_status_masters, :debuff_def
    add_index :card_status_masters, :debuff_mde
    add_index :card_status_masters, :buff_heal
    add_index :card_status_masters, :regene
    add_index :card_status_masters, :turn
    add_index :card_status_masters, :draw
  end
end

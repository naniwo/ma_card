class CreateCardPageLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :card_page_links do |t|
      t.string :card_name, null: false
      t.text :url, null: false
      t.timestamps
    end
  end
end

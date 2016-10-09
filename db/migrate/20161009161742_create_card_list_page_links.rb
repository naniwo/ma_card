class CreateCardListPageLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :card_list_page_links do |t|
      t.text :url, null: false
      t.timestamps
    end
  end
end

class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :item_text
      t.integer :category
      t.integer :status
      t.integer :shipping
      t.integer :area
      t.integer :days          
      t.integer :price        
      t.references :user
      t.timestamps
    end
  end
end

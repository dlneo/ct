class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.references :post
      t.string :header
      t.text :body
      t.references :status
      t.string :img
      t.integer :order

      t.timestamps
    end
    add_index :contents, :post_id
    add_index :contents, :status_id
  end
end

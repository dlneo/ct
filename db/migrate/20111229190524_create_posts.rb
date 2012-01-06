class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :cat
      t.string :title
      t.string :url
      t.references :status
      t.integer :chars

      t.timestamps
    end
    add_index :posts, :cat_id
    add_index :posts, :status_id
  end
end

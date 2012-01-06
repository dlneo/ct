class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :url
      t.integer :order
      t.text :about
      t.references :status

      t.timestamps
    end
    add_index :cats, :status_id
  end
end

class RemoveImgFromContent < ActiveRecord::Migration
  def up
    remove_column :contents, :img
  end

  def down
    add_column :contents, :img, :string
  end
end

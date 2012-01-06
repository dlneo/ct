class AddCatownerToCat < ActiveRecord::Migration
  def change
    add_column :cats, :catowner, :integer
  end
end

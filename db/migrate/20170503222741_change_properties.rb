class ChangeProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :sold
  end
end

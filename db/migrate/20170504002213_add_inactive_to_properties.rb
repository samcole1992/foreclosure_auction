class AddInactiveToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :inactive, :boolean, default: false

  end
end

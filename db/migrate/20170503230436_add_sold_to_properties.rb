class AddSoldToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :sold, :boolean, default: false
  end
end

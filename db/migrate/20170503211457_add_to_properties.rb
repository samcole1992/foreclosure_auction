class AddToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :url, :text
  end
end

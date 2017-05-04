class AddToForeclosedProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :foreclosed_properties, :description, :text
  end
end

class RenameForeclosedPropertiesTable < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :foreclosed_properties, :properties
  end

  def self.down
    rename_table :properties, :foreclosed_properties

  end
end

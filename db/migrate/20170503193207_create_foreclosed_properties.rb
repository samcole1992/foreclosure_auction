class CreateForeclosedProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :foreclosed_properties do |t|
      t.string :address, null: false
      t.string :purchase_price, null: false
      t.string :selling_price, null: false
      t.boolean :sold, null: false
      t.timestamps 
    end
  end
end

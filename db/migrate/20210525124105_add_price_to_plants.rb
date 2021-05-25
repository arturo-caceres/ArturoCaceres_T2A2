class AddPriceToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :price, :float
    add_column :plants, :height_flora, :integer
    add_column :plants, :height_pot, :integer
    add_column :plants, :other_information, :text
  end
end

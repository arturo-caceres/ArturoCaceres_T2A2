class AddBuyerIdToPlants < ActiveRecord::Migration[6.1]
  def change
    add_reference(:plants, :buyer, foreign_key: { to_table: :users })
  end
end

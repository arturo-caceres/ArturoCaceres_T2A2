class AddUserIdToPlants < ActiveRecord::Migration[6.1]
  def change
    add_reference(:plants, :buyers, foreign_key: true)
  end
end

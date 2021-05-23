class AddAgeToPlant < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :age, :integer
  end
end

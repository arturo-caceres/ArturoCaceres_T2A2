class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :home
      t.string :about
      t.text :body

      t.timestamps
    end
  end
end

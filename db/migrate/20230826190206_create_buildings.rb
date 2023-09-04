class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.boolean :has_pool
      t.boolean :has_parking
      t.boolean :has_playground
      t.boolean :has_bbq
      t.boolean :has_green_areas
      t.boolean :has_gym
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class RemoveColumnFromBuildings < ActiveRecord::Migration[7.0]
  def change
    remove_column :buildings, :has_pool, :boolean
    remove_column :buildings, :has_parking, :boolean
    remove_column :buildings, :has_playground, :boolean
    remove_column :buildings, :has_bbq, :boolean
    remove_column :buildings, :has_green_areas, :boolean
    remove_column :buildings, :has_gym, :boolean
  end
end

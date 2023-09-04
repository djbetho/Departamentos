class CreateJoinTableCharacteristicsBuildings < ActiveRecord::Migration[7.0]
  def change
    create_join_table :characteristics, :buildings do |t|
      # t.index [:characteristic_id, :building_id]
      # t.index [:building_id, :characteristic_id]
    end
  end
end

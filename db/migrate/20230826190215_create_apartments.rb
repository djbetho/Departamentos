class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :number
      t.integer :status
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end

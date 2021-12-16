class CreateMedication < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :strength
      t.string :unit
      t.string :side_effects
      t.integer :quantity
      t.integer :user_id
    end
  end
end

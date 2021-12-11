class CreateMedication < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :medication
      t.integer :strength
      t.string :side_effects
      t.integer :count
    end
  end
end

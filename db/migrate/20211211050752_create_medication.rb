class CreateMedication < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :medication
      t.integer :strength
      t.string :side_effects
      t.integer :count
      t.integer :user_id
    end
  end
end

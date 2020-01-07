class CreateCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :costs do |t|
      t.string :name, null: false
      t.string :description
      t.timestamps
    end
  end
end

class CreateCostValues < ActiveRecord::Migration[5.0]
  def change
    create_table :cost_values do |t|
      t.integer :cost_id, null: false
      t.date :date
      t.integer :value
      t.string :description
      t.timestamps
    end
  end
end

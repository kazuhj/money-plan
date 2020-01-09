class CreateCostValues < ActiveRecord::Migration[5.0]
  def change
    create_table :cost_values do |t| 
      t.date :date
      t.integer :value, default: 0
      t.string :description
      t.integer :input_id, foreign_key: true
      t.integer :cost_id, foreign_key: true
      t.timestamps
    end
  end
end

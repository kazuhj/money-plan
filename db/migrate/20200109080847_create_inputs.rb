class CreateInputs < ActiveRecord::Migration[5.0]
  def change
    create_table :inputs do |t|
      t.integer :user_id, foreign_key: true
      t.integer :month_id, foreign_key: true
      t.timestamps
    end
  end
end

class CreateHistoricalBoxes < ActiveRecord::Migration[5.1]
  def change
    create_table :historical_boxes do |t|
      t.references :ticket_box, foreign_key: true
      t.boolean :status
      t.decimal :available
      t.decimal :not_available
      t.integer :inflow_detail_id
      t.integer :outflow_integer_id

      t.timestamps
    end
  end
end

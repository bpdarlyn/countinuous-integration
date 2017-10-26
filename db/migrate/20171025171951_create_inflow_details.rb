class CreateInflowDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :inflow_details do |t|
      t.references :product, foreign_key: true
      t.references :inflow, foreign_key: true
      t.integer :ticket_boxes_id
      t.decimal :start_number
      t.decimal :end_number
      t.decimal :quantity

      t.timestamps
    end
  end
end

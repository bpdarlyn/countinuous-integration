class CreateOutflowDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :outflow_details do |t|
      t.references :outflow, foreign_key: true
      t.references :product, foreign_key: true
      t.decimal :quantity
      t.decimal :start_number
      t.decimal :end_number

      t.timestamps
    end
  end
end

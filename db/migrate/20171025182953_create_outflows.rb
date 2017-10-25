class CreateOutflows < ActiveRecord::Migration[5.1]
  def change
    create_table :outflows do |t|
      t.date :outflow_date
      t.integer :orden_request_id

      t.timestamps
    end
  end
end

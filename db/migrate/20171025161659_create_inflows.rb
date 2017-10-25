class CreateInflows < ActiveRecord::Migration[5.1]
  def change
    create_table :inflows do |t|
      t.date :inflow_date

      t.timestamps
    end
  end
end

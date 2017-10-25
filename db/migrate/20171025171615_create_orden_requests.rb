class CreateOrdenRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :orden_requests do |t|
      t.date :date_orden
      t.string :request_number
      t.string :in_charge
      t.string :event
      t.decimal :price_by_ticket
      t.integer :event_id

      t.timestamps
    end
  end
end

class CreateOrdenRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :orden_requests do |t|
      t.date :date_orden
      t.string :request_number
      t.integer :personal_in_charge_id
      t.date :event_date
      t.string :event
      t.decimal :price_by_ticket
      t.integer :event_id
      t.integer :ticket_quantity
      t.timestamps
    end
  end
end

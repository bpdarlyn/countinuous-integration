class CreateOrdenRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :orden_requests do |t|
      t.date :date_orden
      t.string :request_number
      t.integer :personal_in_charge_id
      t.date :event_date
      t.string :event
      t.decimal :price_by_ticket, :precision => 6, :scale => 2
      t.decimal :total_amount, :precision => 12, :scale => 2
      t.integer :event_id
      t.integer :ticket_quantity
      t.integer :status, default: 0
      t.timestamps
    end
  end
end

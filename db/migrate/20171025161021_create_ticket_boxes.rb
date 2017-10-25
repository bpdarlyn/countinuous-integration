class CreateTicketBoxes < ActiveRecord::Migration[5.1]
  def change
    create_table :ticket_boxes do |t|
      t.integer :nro
      t.integer :quantity
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end

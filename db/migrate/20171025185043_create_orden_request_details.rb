class CreateOrdenRequestDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :orden_request_details do |t|
      t.references :orden_request, foreign_key: true
      t.references :product, foreign_key: true
      t.decimal :quantity

      t.timestamps
    end
  end
end

class CreateTypeOfProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :type_of_products do |t|
      t.string :name

      t.timestamps
    end
  end
end

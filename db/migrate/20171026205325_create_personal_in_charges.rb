class CreatePersonalInCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :personal_in_charges do |t|
      t.string :name
      t.string :last_name
      t.string :ocupation

      t.timestamps
    end
  end
end

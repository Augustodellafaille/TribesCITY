class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :thema
      t.text :description
      t.boolean :accepted
      t.integer :guest_min
      t.integer :guest_max
      t.integer :price_per_person
      t.integer :total_price
      t.date :date
      t.time :starting_hour
      t.time :ending_hour
      t.string :city
      t.string :zip_code
      t.string :street
      t.string :number

      t.timestamps null: false
    end
  end
end

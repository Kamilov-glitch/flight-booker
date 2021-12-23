class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.datetime :date
      t.time :duration
      t.integer :departure_airport
      t.integer :arrival_airport

      t.timestamps
    end
  end
end

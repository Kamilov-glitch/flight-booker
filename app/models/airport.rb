class Airport < ApplicationRecord
    has_many :departuring_flights, class_name: "Flight", inverse_of: :departure_airport, foreign_key: :departure_airport_id
    has_many :arriving_flights, class_name: "Flight", inverse_of: :arrival_airport, foreign_key: :arrival_airport_id
end

class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: "Airport", foreign_key: :departure_airport_id
    belongs_to :arrival_airport, class_name: "Airport", foreign_key: :arrival_airport_id

    def self.get_flight_dates
        self.all.map { |a| a.date }
    end

end
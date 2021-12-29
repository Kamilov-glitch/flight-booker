class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: "Airport", foreign_key: :departure_airport_id
    belongs_to :arrival_airport, class_name: "Airport", foreign_key: :arrival_airport_id

    def self.get_flight_dates
        self.all.map { |a| a.date }
    end

    def self.search(search)
        if search
            flights = Flight.all
            flights = Flight.where(departure_airport_id: search[:":departure_airport_id"])
            flights = Flight.where(arrival_airport_id: search[:":arrival_airport_id"])
            # flights = Flight.where(date: search[:":date"][","])
            return flights
        else
            Flight.all
        end
    end

end
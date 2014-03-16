class Asiento < ActiveRecord::Base
	has_one :autobus
	belongs_to :pasajero
end

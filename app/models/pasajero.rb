class Pasajero < ActiveRecord::Base
	has_one :asiento
	belongs_to :boleto
end

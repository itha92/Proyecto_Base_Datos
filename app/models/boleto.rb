class Boleto < ActiveRecord::Base
	has_one :precio_boleto
	has_one :pasajero
	has_one :terminal
end

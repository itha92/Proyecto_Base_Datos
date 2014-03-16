class Encomienda < ActiveRecord::Base
	has_one :terminal
	has_one :precio_paquete
end

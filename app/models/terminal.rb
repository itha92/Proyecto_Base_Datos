class Terminal < ActiveRecord::Base
	has_many :boletos
	has_many :encomienda
	has_many :itinerario
	has_many :empleado
end

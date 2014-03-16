class Terminal < ActiveRecord::Base
	belongs_to :boleto
	belongs_to :encomienda
	belongs_to :itinerario
	belongs_to :empleado
end

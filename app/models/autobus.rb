class Autobus < ActiveRecord::Base
	belongs_to :empleado
	belongs_to :mantenimiento
	belongs_to :asiento
end

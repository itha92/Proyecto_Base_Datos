class Autobus < ActiveRecord::Base
	belongs_to :empleado
	has_many :mantenimiento
	belongs_to :asiento
end

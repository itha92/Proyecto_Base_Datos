class Autobus < ActiveRecord::Base
	has_many :asiento
	has_one :empleado
	belongs_to :mantenimiento
end

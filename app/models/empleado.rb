class Empleado < ActiveRecord::Base
	has_one :autobus
	has_one :terminal
end

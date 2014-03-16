class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :identidad
      t.string :nombre
      t.text :direccion
      t.string :telefono
      t.string :celular
      t.string :sexo
      t.date :fecha_nac
      t.string :cargo
      t.boolean :is_active

      t.timestamps
    end
  end
end

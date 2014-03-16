class CreateMantenimientos < ActiveRecord::Migration
  def change
    create_table :mantenimientos do |t|
      t.date :fecha
      t.text :observacion
      t.integer :kilometraje
      t.decimal :costo

      t.timestamps
      t.references :autobus
    end
  end
end

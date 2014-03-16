class CreateItinerarios < ActiveRecord::Migration
  def change
    create_table :itinerarios do |t|
      t.string :destino
      t.string :origen
      t.date :fecha
      t.time :hora_salida

      t.timestamps
    end
  end
end

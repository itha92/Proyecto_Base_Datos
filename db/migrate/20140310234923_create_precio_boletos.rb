class CreatePrecioBoletos < ActiveRecord::Migration
  def change
    create_table :precio_boletos do |t|
      t.decimal :precio
      t.string :origen
      t.string :destino
      t.string :clase

      t.timestamps
    end
  end
end

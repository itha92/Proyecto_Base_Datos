class CreatePrecioPaquetes < ActiveRecord::Migration
  def change
    create_table :precio_paquetes do |t|
      t.string :tipo_paquete
      t.decimal :costo

      t.timestamps
    end
  end
end

class CreateBoletos < ActiveRecord::Migration
  def change
    create_table :boletos do |t|
      t.datetime :fecha
      t.decimal :descuento
      t.decimal :subtotal
      t.decimal :total

      t.timestamps
    end
  end
end

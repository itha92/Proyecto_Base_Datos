class CreatePasajeros < ActiveRecord::Migration
  def change
    create_table :pasajeros do |t|
      t.string :identidad
      t.string :nombre
      t.boolean :is_active

      t.timestamps
    end
  end
end

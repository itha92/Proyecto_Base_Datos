class CreateEncomiendas < ActiveRecord::Migration
  def change
    create_table :encomiendas do |t|
      t.string :destinatario
      t.string :remitente
      t.decimal :peso
      t.string :destino
      t.string :origen
      t.decimal :precio
      t.boolean :is_delivered
      t.boolean :is_shipped
      t.boolean :is_onhold
      t.date :fecha

      t.timestamps
    end
  end
end

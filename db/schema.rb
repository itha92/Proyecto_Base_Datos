# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140314010504) do

  create_table "asientos", force: true do |t|
    t.string   "asiento_no"
    t.string   "tipo"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "autobuses", force: true do |t|
    t.string   "marca"
    t.string   "modelo"
    t.integer  "capacidad"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boletos", force: true do |t|
    t.datetime "fecha"
    t.decimal  "descuento",  precision: 10, scale: 0
    t.decimal  "subtotal",   precision: 10, scale: 0
    t.decimal  "total",      precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empleados", force: true do |t|
    t.string   "identidad"
    t.string   "nombre"
    t.text     "direccion"
    t.string   "telefono"
    t.string   "celular"
    t.string   "sexo"
    t.date     "fecha_nac"
    t.string   "cargo"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encomiendas", force: true do |t|
    t.string   "destinatario"
    t.string   "remitente"
    t.decimal  "peso",         precision: 10, scale: 0
    t.string   "destino"
    t.string   "origen"
    t.decimal  "precio",       precision: 10, scale: 0
    t.boolean  "is_delivered"
    t.boolean  "is_shipped"
    t.boolean  "is_onhold"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itinerarios", force: true do |t|
    t.string   "destino"
    t.string   "origen"
    t.date     "fecha"
    t.time     "hora_salida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mantenimientos", force: true do |t|
    t.date     "fecha"
    t.text     "observacion"
    t.integer  "kilometraje"
    t.decimal  "costo",       precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "autobus_id"
  end

  create_table "pasajeros", force: true do |t|
    t.string   "identidad"
    t.string   "nombre"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "precio_boletos", force: true do |t|
    t.decimal  "precio",     precision: 10, scale: 0
    t.string   "origen"
    t.string   "destino"
    t.string   "clase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "precio_paquetes", force: true do |t|
    t.string   "tipo_paquete"
    t.decimal  "costo",        precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terminals", force: true do |t|
    t.string   "codigo"
    t.string   "telefono"
    t.string   "direccion"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20141025171745) do

  create_table "empresa_aereas", force: true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hoteis", force: true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualificacao_hoteis", force: true do |t|
    t.boolean  "concretizado"
    t.integer  "justificativa"
    t.integer  "nivel"
    t.string   "comentario"
    t.integer  "usuario_id"
    t.integer  "hotel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qualificacao_hoteis", ["hotel_id"], name: "index_qualificacao_hoteis_on_hotel_id"
  add_index "qualificacao_hoteis", ["usuario_id"], name: "index_qualificacao_hoteis_on_usuario_id"

  create_table "qualificacao_passagens", force: true do |t|
    t.boolean  "concretizado"
    t.integer  "justificativa"
    t.integer  "nivel"
    t.string   "comentario"
    t.integer  "usuario_id"
    t.integer  "empresa_aerea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qualificacao_passagens", ["empresa_aerea_id"], name: "index_qualificacao_passagens_on_empresa_aerea_id"
  add_index "qualificacao_passagens", ["usuario_id"], name: "index_qualificacao_passagens_on_usuario_id"

  create_table "reserva_diarias", force: true do |t|
    t.string   "periodo_inicial"
    t.string   "periodo_final"
    t.string   "valor_unitario"
    t.string   "vagas_disponiveis"
    t.integer  "hotel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reserva_diarias", ["hotel_id"], name: "index_reserva_diarias_on_hotel_id"

  create_table "reserva_passagens", force: true do |t|
    t.date     "data_partida"
    t.integer  "hora_partida"
    t.integer  "minuto_partida"
    t.string   "origem"
    t.string   "destino"
    t.float    "valor_unitario"
    t.integer  "vagas_disponiveis"
    t.integer  "empresa_aerea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservar_passagens", force: true do |t|
    t.string   "data_partida"
    t.integer  "hora_partida"
    t.integer  "minuto_partida"
    t.string   "origem"
    t.string   "destino"
    t.float    "valor_unitario"
    t.integer  "vagas_disponiveis"
    t.integer  "empresa_aerea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservar_passagens", ["empresa_aerea_id"], name: "index_reservar_passagens_on_empresa_aerea_id"

  create_table "usuarios", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

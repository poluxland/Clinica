# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_10_224528) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atencions", force: :cascade do |t|
    t.bigint "paciente_id", null: false
    t.bigint "centro_id", null: false
    t.bigint "user_id", null: false
    t.date "fecha"
    t.string "tutor"
    t.text "evolucion"
    t.text "revision_tutor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["centro_id"], name: "index_atencions_on_centro_id"
    t.index ["paciente_id"], name: "index_atencions_on_paciente_id"
    t.index ["user_id"], name: "index_atencions_on_user_id"
  end

  create_table "bitacoras", force: :cascade do |t|
    t.integer "numero_semana"
    t.date "fecha"
    t.string "alumno"
    t.string "profesor"
    t.text "registro"
    t.text "acuerdos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "centros", force: :cascade do |t|
    t.string "nombre"
    t.string "area"
    t.string "comuna"
    t.string "modalidad"
    t.text "otros"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nombre_completo"
    t.date "fecha_evaluacion"
    t.date "fecha_diagnostico"
    t.date "fecha_nacimiento"
    t.integer "edad"
    t.string "direccion"
    t.string "telefono"
    t.string "diagnostico_medico"
    t.string "escolaridad"
    t.string "nacionalidad"
    t.string "e_civil"
    t.string "profesion_oficio"
    t.string "lengua_materna"
    t.string "lateralidad"
    t.string "nombre_acompanante_parentesco"
    t.string "n_ficha_clinica"
    t.string "sexo"
    t.string "hta"
    t.string "audicion"
    t.string "drogas"
    t.string "farmaco_dependencia"
    t.string "vision"
    t.string "cirugias"
    t.string "tec"
    t.string "diabetes"
    t.string "cond_nutricional"
    t.string "hipo_hipertiroidismo"
    t.string "acv"
    t.string "hospitalizaciones"
    t.string "enf_respiratorias"
    t.string "tabaquismo"
    t.string "peso"
    t.string "cardiopatias"
    t.string "alcohol"
    t.string "talla"
    t.string "tumores_neoplasias"
    t.string "medicamentos"
    t.string "dosis"
    t.string "control_consultorio"
    t.string "uso_antidepresivos"
    t.text "resumen_anamnesis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "apellido_materno"
    t.string "apellido_paterno"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "rut"
    t.string "telefono"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "nombres"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "atencions", "centros"
  add_foreign_key "atencions", "pacientes"
  add_foreign_key "atencions", "users"
end

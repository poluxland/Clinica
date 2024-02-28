class CreatePacientes < ActiveRecord::Migration[7.1]
  def change
    create_table :pacientes do |t|
      t.string :nombre_completo
      t.date :fecha_evaluacion
      t.date :fecha_diagnostico
      t.date :fecha_nacimiento
      t.integer :edad
      t.string :direccion
      t.string :telefono
      t.string :diagnostico_medico
      t.string :escolaridad
      t.string :nacionalidad
      t.string :e_civil
      t.string :profesion_oficio
      t.string :lengua_materna
      t.string :lateralidad
      t.string :nombre_acompanante_parentesco
      t.string :n_ficha_clinica
      t.string :sexo
      t.string :hta
      t.string :audicion
      t.string :drogas
      t.string :farmaco_dependencia
      t.string :vision
      t.string :cirugias
      t.string :tec
      t.string :diabetes
      t.string :cond_nutricional
      t.string :hipo_hipertiroidismo
      t.string :acv
      t.string :hospitalizaciones
      t.string :enf_respiratorias
      t.string :tabaquismo
      t.string :peso
      t.string :cardiopatias
      t.string :alcohol
      t.string :talla
      t.string :tumores_neoplasias
      t.string :medicamentos
      t.string :dosis
      t.string :control_consultorio
      t.string :uso_antidepresivos
      t.text :resumen_anamnesis

      t.timestamps
    end
  end
end

json.extract! paciente, :id, :nombre_completo, :fecha_evaluacion, :fecha_diagnostico, :fecha_nacimiento, :edad, :direccion, :telefono, :diagnostico_medico, :escolaridad, :nacionalidad, :e_civil, :profesion_oficio, :lengua_materna, :lateralidad, :nombre_acompanante_parentesco, :n_ficha_clinica, :sexo, :hta, :audicion, :drogas, :farmaco_dependencia, :vision, :cirugias, :tec, :diabetes, :cond_nutricional, :hipo_hipertiroidismo, :acv, :hospitalizaciones, :enf_respiratorias, :tabaquismo, :peso, :cardiopatias, :alcohol, :talla, :tumores_neoplasias, :medicamentos, :dosis, :control_consultorio, :uso_antidepresivos, :resumen_anamnesis, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
class AddApellidosToPacientes < ActiveRecord::Migration[7.1]
  def change
    add_column :pacientes, :apellido_materno, :string
    add_column :pacientes, :apellido_paterno, :string
  end
end

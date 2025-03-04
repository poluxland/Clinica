class AddSecondAlumnoAndSecondProfesorToBitacoras < ActiveRecord::Migration[7.1]
  def change
    add_column :bitacoras, :alumno2, :string
    add_column :bitacoras, :profesor2, :string
  end
end

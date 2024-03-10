class CreateBitacoras < ActiveRecord::Migration[7.1]
  def change
    create_table :bitacoras do |t|
      t.integer :numero_semana
      t.date :fecha
      t.string :alumno
      t.string :profesor
      t.text :registro
      t.text :acuerdos

      t.timestamps
    end
  end
end

class CreateCentros < ActiveRecord::Migration[7.1]
  def change
    create_table :centros do |t|
      t.string :nombre
      t.string :area
      t.string :comuna
      t.string :modalidad
      t.text :otros

      t.timestamps
    end
  end
end

class CreateAtencions < ActiveRecord::Migration[7.1]
  def change
    create_table :atencions do |t|
      t.references :paciente, null: false, foreign_key: true
      t.references :centro, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :fecha
      t.string :tutor
      t.text :evolucion
      t.text :revision_tutor

      t.timestamps
    end
  end
end

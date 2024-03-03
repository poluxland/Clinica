class Paciente < ApplicationRecord
   has_many :atenciones, dependent: :destroy, class_name: 'Atencion'
  validates :edad, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :nombre_completo, :fecha_nacimiento, presence: true
end

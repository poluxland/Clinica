class Atencion < ApplicationRecord
  belongs_to :paciente
  belongs_to :centro
  belongs_to :user
  validates :fecha, :evolucion, presence: true
end

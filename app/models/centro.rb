class Centro < ApplicationRecord
  has_many :atenciones, class_name: 'Atencion', dependent: :destroy
  validates :nombre, :area, :comuna, :modalidad, presence: true
end

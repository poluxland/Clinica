class Centro < ApplicationRecord
  has_many :atenciones, dependent: :destroy
  validates :nombre, :area, :comuna, :modalidad, presence: true
end

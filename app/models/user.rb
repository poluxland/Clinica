class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:alumno, :profesor, :admin]

  validate :email_domain_validation

 after_initialize :set_default_role, if: :new_record?

 def set_default_role
   self.role ||= :user
 end



  private

 def email_domain_validation
    domains = ['uandresbello.edu', 'unab.cl']
    unless domains.any? { |domain| email.end_with?("@#{domain}") }
      errors.add(:email, 'debe pertenecer a un dominio autorizado (uandresbello.edu o unab.cl)')
    end
  end





end

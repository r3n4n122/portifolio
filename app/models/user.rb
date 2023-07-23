class User < ApplicationRecord
  require "cpf_cnpj"
  validates :full_name, :cpf, :cns, :email, :phone, :date_of_birth, presence: true

  def check_cpf(cpf)
    CPF.valid?(cpf)
  end
end
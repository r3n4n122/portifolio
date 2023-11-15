class User < ApplicationRecord
  require "cpf_cnpj"
  validates :full_name, :cpf, :cns, :email, :phone, :date_of_birth, presence: true

  def cpf_valid?
    if self.cpf.size > 11
      return "CPF Invalido"
    else
      cpf = CPF.new(self.cpf)
      cpf.formatted
      format_cpf
      return cpf.valid?
    end
  end

  private 

  def format_cpf
    cpf = CPF.new(self.cpf)
    cpf.formatted
    self.save
  end
end
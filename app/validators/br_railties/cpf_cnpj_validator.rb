# frozen_string_literal: true

require 'cnpj'
require 'cpf'

module BrRailties
  class CpfCnpjValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      cpf = ::CPF.new(value)
      return if cpf.valid? && value == cpf.stripped

      cnpj = ::CNPJ.new(value)
      return if cnpj.valid? && value == cnpj.stripped

      record.errors.add(
        attribute,
        options[:message] || 'CPF/CNPJ inválido (9 ou 14 caracteres, somente dígitos)'
      )
    end
  end
end

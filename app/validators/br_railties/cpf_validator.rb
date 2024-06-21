# frozen_string_literal: true

require 'cpf'

module BrRailties
  class CpfValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      cpf = ::CPF.new(value)
      return if cpf.valid? && value == cpf.stripped

      record.errors.add(
        attribute,
        options[:message] || 'CPF inválido (9 caracteres, somente dígitos)'
      )
    end
  end
end

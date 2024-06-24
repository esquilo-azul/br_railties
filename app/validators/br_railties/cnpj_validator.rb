# frozen_string_literal: true

require 'cnpj'

module BrRailties
  class CnpjValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      cnpj = ::CNPJ.new(value)
      return if cnpj.valid? && value == cnpj.stripped

      record.errors.add(
        attribute,
        options[:message] || 'CNPJ inválido (14 caracteres, somente dígitos)'
      )
    end
  end
end

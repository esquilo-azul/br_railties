# frozen_string_literal: true

RSpec.describe(BrRailties::CpfCnpjValidator) do
  include_examples 'active_model_attribute_validator',
                   SpecHelper::Cpf::VALID_VALUES + SpecHelper::Cnpj::VALID_VALUES,
                   SpecHelper::Cpf::INVALID_VALUES + SpecHelper::Cnpj::INVALID_VALUES
end

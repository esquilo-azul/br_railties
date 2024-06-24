# frozen_string_literal: true

RSpec.describe(BrRailties::CnpjValidator) do
  include_examples 'active_model_attribute_validator', SpecHelper::Cnpj::VALID_VALUES,
                   SpecHelper::Cnpj::INVALID_VALUES
end

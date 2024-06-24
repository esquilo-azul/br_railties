# frozen_string_literal: true

RSpec.describe(BrRailties::CpfValidator) do
  include_examples 'active_model_attribute_validator', SpecHelper::Cpf::VALID_VALUES,
                   SpecHelper::Cpf::INVALID_VALUES
end

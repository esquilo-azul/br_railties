# frozen_string_literal: true

namespace :br_railties do
  namespace :ibge do
    namespace :import do
      desc 'Importa unidades federativas do cadastro do IBGE.'
      task federal_units: :environment do |_t, _args|
        ::BrRailties::Ibge::Import::FederalUnits.new
      end
    end
  end
end

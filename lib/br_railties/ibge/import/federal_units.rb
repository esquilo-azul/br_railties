# frozen_string_literal: true

require 'json'

module BrRailties
  module Ibge
    module Import
      class FederalUnits
        SOURCE_URL = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados'

        def initialize
          run
        end

        private

        def run
          source_data.each do |fu_source_data|
            import(fu_source_data.except('regiao'))
          end
        end

        def source_data
          JSON.parse(Net::HTTP.get(URI.parse(SOURCE_URL)))
        end

        def import(raw)
          data = { acronym: raw['sigla'], name: raw['nome'], ibge_code: raw['id'] }
          record = record_by_data(data)
          record.attributes = data
          ::Rails.logger.info("Importing: #{record.attributes}")
          record.save!
        end

        def record_by_data(data)
          ::BrRailties::FederalUnit.find_by(ibge_code: data[:ibge_code]) ||
            ::BrRailties::FederalUnit.find_by(acronym: data[:acronym]) ||
            ::BrRailties::FederalUnit.new
        end
      end
    end
  end
end

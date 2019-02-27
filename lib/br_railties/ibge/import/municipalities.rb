# frozen_string_literal: true

require 'json'

module BrRailties
  module Ibge
    module Import
      class Municipalities
        SOURCE_URL = 'https://servicodados.ibge.gov.br/api/v1/localidades/municipios'

        def initialize
          run
        end

        private

        def run
          source_data.each do |municipality_source_data|
            import(municipality_source_data)
          end
        end

        def source_data
          JSON.parse(Net::HTTP.get(URI.parse(SOURCE_URL)))
        end

        def import(raw)
          data = { federal_unit: find_federal_unit(raw), name: raw['nome'], ibge_code: raw['id'] }
          record = record_by_data(data)
          record.attributes = data
          ::Rails.logger.info("Importing: #{record.attributes}")
          record.save!
        end

        def find_federal_unit(raw)
          raw = raw['microrregiao']['mesorregiao']['UF']
          ::BrRailties::FederalUnit.find_by(ibge_code: raw['id']) ||
            ::BrRailties::FederalUnit.find_by(acronym: raw['sigla']) ||
            raise("Federal unit not found (Raw data: #{raw})")
        end

        def record_by_data(data)
          ::BrRailties::Municipality.find_by(ibge_code: data[:ibge_code]) ||
            ::BrRailties::Municipality.find_by(name: data[:name],
                                               federal_unit: data[:federal_unit]) ||
            ::BrRailties::Municipality.new
        end
      end
    end
  end
end

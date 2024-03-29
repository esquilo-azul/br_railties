# frozen_string_literal: true

require 'recordselect'

require 'br_railties/engine'
require 'br_railties/ibge/import/federal_units'
require 'br_railties/ibge/import/municipalities'

module BrRailties
  def self.table_name_prefix
    'br_railties_'
  end
end

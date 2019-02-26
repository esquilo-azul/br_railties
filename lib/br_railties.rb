# frozen_string_literal: true

require 'active_scaffold'

require 'br_railties/engine'
require 'br_railties/ibge/import/federal_units'

module BrRailties
  def self.table_name_prefix
    'br_railties_'
  end
end

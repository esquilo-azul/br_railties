# frozen_string_literal: true

require 'active_scaffold'

require 'br_railties/engine'

module BrRailties
  def self.table_name_prefix
    'br_railties_'
  end
end

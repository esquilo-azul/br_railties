# frozen_string_literal: true

require 'eac_rails_utils'

module BrRailties
  class Engine < ::Rails::Engine
    isolate_namespace BrRailties
    include ::EacRailsUtils::EngineHelper
  end
end

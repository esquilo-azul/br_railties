# frozen_string_literal: true

require 'eac_active_scaffold'
require 'eac_rails_utils/engine_helper'

module BrRailties
  class Engine < ::Rails::Engine
    isolate_namespace BrRailties
    include ::EacRailsUtils::EngineHelper
  end
end

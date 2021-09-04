# frozen_string_literal: true

require 'eac_active_scaffold'

module BrRailties
  class Engine < ::Rails::Engine
    isolate_namespace BrRailties

    initializer :append_migrations do |app|
      config.paths['db/migrate'].expanded.each do |expanded_path|
        app.config.paths['db/migrate'] << expanded_path
      end
    end
  end
end

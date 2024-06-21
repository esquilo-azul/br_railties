# frozen_string_literal: true

BrRailties::Engine.routes.draw do
  resources(:federal_units, concerns: active_scaffold)
end

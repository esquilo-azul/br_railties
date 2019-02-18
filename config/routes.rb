# frozen_string_literal: true

BrRailties::Engine.routes.draw do
  resources(:federal_units) do
    as_routes
  end
end

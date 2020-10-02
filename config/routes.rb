# frozen_string_literal: true

BrRailties::Engine.routes.draw do
  concern :active_scaffold, ActiveScaffold::Routing::Basic.new(association: true)
  resources(:federal_units, concerns: :active_scaffold)
  resources(:municipalities, concerns: :active_scaffold) { record_select_routes }
end

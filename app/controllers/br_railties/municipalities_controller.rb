# frozen_string_literal: true

module BrRailties
  class MunicipalitiesController < ApplicationController
    active_scaffold :"br_railties/municipality" do |conf|
      conf.columns[:federal_unit].form_ui = :select
    end
  end
end

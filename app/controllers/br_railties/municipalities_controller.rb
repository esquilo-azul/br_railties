# frozen_string_literal: true

module BrRailties
  class MunicipalitiesController < ApplicationController
    record_select per_page: 10,
                  search_on: [:name],
                  order_by: 'name ASC',
                  model: ::BrRailties::Municipality,
                  full_text_search: true

    active_scaffold :"br_railties/municipality" do |conf|
      conf.columns[:federal_unit].form_ui = :select
    end
  end
end

# frozen_string_literal: true

module BrRailties
  class Municipality < ActiveRecord::Base
    belongs_to :federal_unit, class_name: 'BrRailties::FederalUnit'

    validates :federal_unit, presence: true
    validates :name, presence: true, uniqueness: { case_sensitive: false, scope: [:federal_unit] }
  end
end

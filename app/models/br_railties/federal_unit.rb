# frozen_string_literal: true

module BrRailties
  class FederalUnit < ActiveRecord::Base
    validates :acronym, presence: true, uniqueness: { case_sensitive: false }, length: { in: 2..2 }
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :ibge_code, presence: true, uniqueness: true, numericality: { greater_than: 0 }

    def acronym=(value)
      self[:acronym] = value.to_s.upcase
    end
  end
end

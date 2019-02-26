# frozen_string_literal: true

class AddIbgeCodeToBrRailtiesFederalUnits < ActiveRecord::Migration
  def change
    add_column :br_railties_federal_units, :ibge_code, :integer
  end
end

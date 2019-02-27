# frozen_string_literal: true

class AddIbgeCodeToBrRailtiesMunicipalities < ActiveRecord::Migration
  def change
    add_column :br_railties_municipalities, :ibge_code, :integer
  end
end

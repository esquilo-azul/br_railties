# frozen_string_literal: true

class AddIbgeCodeToBrRailtiesFederalUnits < (
    Rails.version < '5' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  )
  def change
    add_column :br_railties_federal_units, :ibge_code, :integer
  end
end

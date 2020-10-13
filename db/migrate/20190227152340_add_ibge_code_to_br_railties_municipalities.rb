# frozen_string_literal: true

class AddIbgeCodeToBrRailtiesMunicipalities < (
    Rails.version < '5' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  )
  def change
    add_column :br_railties_municipalities, :ibge_code, :integer
  end
end

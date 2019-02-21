# frozen_string_literal: true

class CreateBrRailtiesMunicipalities < ActiveRecord::Migration
  def change
    create_table :br_railties_municipalities do |t|
      t.string :name
      t.references :federal_unit, index: true

      t.timestamps null: false
    end

    add_foreign_key :br_railties_municipalities, :br_railties_federal_units,
                    column: :federal_unit_id
  end
end

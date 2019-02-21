# frozen_string_literal: true

class CreateBrRailtiesFederalUnits < ActiveRecord::Migration
  def change
    create_table :br_railties_federal_units do |t|
      t.string :acronym
      t.string :name

      t.timestamps null: false
    end
  end
end

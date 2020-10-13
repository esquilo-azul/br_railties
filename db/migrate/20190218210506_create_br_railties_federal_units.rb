# frozen_string_literal: true

class CreateBrRailtiesFederalUnits < (
    Rails.version < '5' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  )
  def change
    create_table :br_railties_federal_units do |t|
      t.string :acronym
      t.string :name

      t.timestamps null: false
    end
  end
end

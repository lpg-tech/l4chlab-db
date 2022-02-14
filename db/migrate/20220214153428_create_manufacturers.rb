# frozen_string_literal: true

# Migration for Manufacturer Table. TODO add uniqueness to mid, uid and bur in db
class CreateManufacturers < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.text :description
      t.string :mid
      t.string :uid
      t.string :bur

      t.timestamps
    end
  end
end

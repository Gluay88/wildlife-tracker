class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :sightings, :longitude, :longtitude
  end
end

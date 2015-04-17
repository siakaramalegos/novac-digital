class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.string :series_title

      t.timestamps null: false
    end
  end
end

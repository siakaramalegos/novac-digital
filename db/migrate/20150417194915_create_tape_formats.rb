class CreateTapeFormats < ActiveRecord::Migration
  def change
    create_table :tape_formats do |t|
      t.string :tape_format

      t.timestamps null: false
    end
  end
end

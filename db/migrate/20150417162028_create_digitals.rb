class CreateDigitals < ActiveRecord::Migration
  def change
    create_table :digitals do |t|
      t.references :project, index: true, foreign_key: true
      t.string :title
      t.string :type
      t.string :description
      t.string :link
      t.string :file

      t.timestamps null: false
    end
  end
end

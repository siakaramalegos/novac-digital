class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :serial, index: true, foreign_key: true
      t.references :owner, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.text :production_notes
      t.datetime :production_date
      t.integer :production_year

      t.timestamps null: false
    end
  end
end

class CreatePhysicals < ActiveRecord::Migration
  def change
    create_table :physicals do |t|
      t.string :tape
      t.string :new_box
      t.string :old_box
      t.string :title
      t.string :label_title
      t.text :label_info
      t.datetime :label_date
      t.references :owner, index: true, foreign_key: true
      t.string :master_status
      t.references :brand, index: true, foreign_key: true
      t.references :condition, index: true, foreign_key: true
      t.text :notes
      t.datetime :date
      t.string :location

      t.timestamps null: false
    end
  end
end

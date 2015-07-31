class CreateProcessSteps < ActiveRecord::Migration
  def change
    create_table :process_steps do |t|
      t.string :process_step
      t.integer :order

      t.timestamps null: false
    end
  end
end

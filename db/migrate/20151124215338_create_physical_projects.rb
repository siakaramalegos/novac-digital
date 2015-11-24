class CreatePhysicalProjects < ActiveRecord::Migration
  def change
    create_table :physical_projects do |t|
      t.references :physical, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

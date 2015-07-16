class AddDateToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :date_production, :date
  end
end

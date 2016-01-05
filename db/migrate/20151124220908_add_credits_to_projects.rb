class AddCreditsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :credits, :text
  end
end

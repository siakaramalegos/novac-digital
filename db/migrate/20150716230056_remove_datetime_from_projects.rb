class RemoveDatetimeFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :production_date, :datetime
  end
end

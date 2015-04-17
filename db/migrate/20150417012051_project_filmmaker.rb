class ProjectFilmmaker < ActiveRecord::Migration
  def change
    create_table :project_filmmakers, id: false do |t|
      t.belongs_to :projects, index: true
      t.belongs_to :filmmakers, index: true
    end
  end
end

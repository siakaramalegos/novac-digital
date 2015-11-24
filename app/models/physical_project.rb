class PhysicalProject < ActiveRecord::Base
  belongs_to :physical
  belongs_to :project
end

# == Schema Information
#
# Table name: physical_projects
#
#  id          :integer          not null, primary key
#  physical_id :integer
#  project_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_physical_projects_on_physical_id  (physical_id)
#  index_physical_projects_on_project_id   (project_id)
#

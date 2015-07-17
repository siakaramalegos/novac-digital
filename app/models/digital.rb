class Digital < ActiveRecord::Base
  belongs_to :project
end

# == Schema Information
#
# Table name: digitals
#
#  id          :integer          not null, primary key
#  project_id  :integer
#  title       :string
#  description :string
#  link        :string
#  file        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  file_type   :string
#
# Indexes
#
#  index_digitals_on_project_id  (project_id)
#

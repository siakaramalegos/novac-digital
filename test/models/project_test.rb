require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: projects
#
#  id               :integer          not null, primary key
#  serial_id        :integer          default(1)
#  owner_id         :integer
#  title            :string
#  description      :text
#  production_notes :text
#  production_year  :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  date_production  :date
#  credits          :text
#
# Indexes
#
#  index_projects_on_owner_id   (owner_id)
#  index_projects_on_serial_id  (serial_id)
#

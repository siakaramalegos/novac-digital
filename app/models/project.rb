class Project < ActiveRecord::Base
  belongs_to :serial
  belongs_to :owner
  has_and_belongs_to_many :filmmakers

  validates :serial_id, :owner_id, :title, presence: true
  validates :title, uniqueness: true
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
#
# Indexes
#
#  index_projects_on_owner_id   (owner_id)
#  index_projects_on_serial_id  (serial_id)
#

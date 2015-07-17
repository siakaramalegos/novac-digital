class Serial < ActiveRecord::Base
	has_many :projects

  validates :series_title, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: serials
#
#  id           :integer          not null, primary key
#  series_title :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

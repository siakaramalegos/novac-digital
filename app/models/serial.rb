class Serial < ActiveRecord::Base
	has_many :projects
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

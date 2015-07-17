class Filmmaker < ActiveRecord::Base
	has_and_belongs_to_many :projects
end

# == Schema Information
#
# Table name: filmmakers
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

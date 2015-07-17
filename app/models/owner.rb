class Owner < ActiveRecord::Base
	has_many :projects
  has_many :physicals
end

# == Schema Information
#
# Table name: owners
#
#  id            :integer          not null, primary key
#  owner_name    :string
#  contact_name  :string
#  contact_email :string
#  contact_phone :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

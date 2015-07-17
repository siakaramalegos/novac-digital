class Brand < ActiveRecord::Base
  has_many :physicals
end

# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  brand      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

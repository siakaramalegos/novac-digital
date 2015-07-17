class Condition < ActiveRecord::Base
  has_many :physicals
end

# == Schema Information
#
# Table name: conditions
#
#  id          :integer          not null, primary key
#  condition   :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

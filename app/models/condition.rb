class Condition < ActiveRecord::Base
  has_many :physicals

  validates :condition, presence: true, uniqueness: true
  validates :description, presence: true
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

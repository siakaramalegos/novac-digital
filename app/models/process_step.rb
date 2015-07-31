class ProcessStep < ActiveRecord::Base
  has_many :physicals

  validates :process_step, :order, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: process_steps
#
#  id           :integer          not null, primary key
#  process_step :string
#  order        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

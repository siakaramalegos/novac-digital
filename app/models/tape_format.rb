class TapeFormat < ActiveRecord::Base
  has_many :physicals
end

# == Schema Information
#
# Table name: tape_formats
#
#  id          :integer          not null, primary key
#  tape_format :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

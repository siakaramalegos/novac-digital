class TapeFormat < ActiveRecord::Base
  has_many :physicals

  validates :tape_format, presence: true, uniqueness: true

  before_destroy :ensure_not_referenced_by_any_physicals

  private

  def ensure_not_referenced_by_any_physicals
    if physicals.empty?
      return true
    else
      logger.error "Attempt to delete tape format which has physicals."
      return false
    end
  end
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

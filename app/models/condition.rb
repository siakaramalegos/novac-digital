class Condition < ActiveRecord::Base
  has_many :physicals

  validates :condition, presence: true, uniqueness: true
  validates :description, presence: true

  before_destroy :ensure_not_referenced_by_any_physicals

  private

  def ensure_not_referenced_by_any_physicals
    if physicals.empty?
      return true
    else
      logger.error "Attempt to delete condition which has physicals."
      return false
    end
  end
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

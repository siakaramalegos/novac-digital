class ProcessStep < ActiveRecord::Base
  has_many :physicals

  validates :process_step, :order, presence: true, uniqueness: true

  before_destroy :ensure_not_referenced_by_any_physicals

  private

  def ensure_not_referenced_by_any_physicals
    if physicals.empty?
      return true
    else
      logger.error "Attempt to delete process step which has physicals."
      return false
    end
  end
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

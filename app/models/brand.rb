class Brand < ActiveRecord::Base
  has_many :physicals
  validates :brand, presence: true, uniqueness: true
  before_destroy :ensure_not_referenced_by_any_physicals

  private

  def ensure_not_referenced_by_any_physicals
    if physicals.empty?
      return true
    else
      logger.error "Attempt to delete brand which has physicals."
      return false
    end
  end
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

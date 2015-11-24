class Owner < ActiveRecord::Base
	has_many :projects
  has_many :physicals

  validates :owner_name, presence: true, uniqueness: true
  validates :contact_name, :contact_email, :contact_phone, presence: true

  before_destroy :ensure_not_referenced_by_any_physicals

  private

  def ensure_not_referenced_by_any_physicals
    if physicals.empty?
      return true
    else
      logger.error "Attempt to delete owner which has physicals."
      return false
    end
  end
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

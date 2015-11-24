class Physical < ActiveRecord::Base
  belongs_to :owner
  belongs_to :tape_format
  belongs_to :brand
  belongs_to :condition
  belongs_to :process_step
  has_many :physical_projects
  has_many :projects, through: :physical_projects

  validates :owner_id, :tape, :title, :brand_id, :condition_id, :tape_format_id, presence: true
  validates :tape, uniqueness: true

  before_destroy :ensure_not_referenced_by_any_projects

  private

  def ensure_not_referenced_by_any_projects
    if physical_projects.empty?
      return true
    else
      logger.error "Attempt to delete physical which has projects through physical_projects."
      return false
    end
  end
end

# == Schema Information
#
# Table name: physicals
#
#  id              :integer          not null, primary key
#  tape            :string
#  new_box         :string
#  old_box         :string
#  title           :string
#  label_info      :text
#  owner_id        :integer          default(1)
#  master_status   :string
#  brand_id        :integer
#  condition_id    :integer
#  notes           :text
#  location        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  tape_format_id  :integer
#  date_label      :date
#  date_actual     :date
#  process_step_id :integer
#
# Indexes
#
#  index_physicals_on_brand_id         (brand_id)
#  index_physicals_on_condition_id     (condition_id)
#  index_physicals_on_owner_id         (owner_id)
#  index_physicals_on_process_step_id  (process_step_id)
#  index_physicals_on_tape_format_id   (tape_format_id)
#

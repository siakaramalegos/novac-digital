require 'test_helper'

class PhysicalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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

class Physical < ActiveRecord::Base
  belongs_to :owner
  belongs_to :tape_format
  belongs_to :brand
  belongs_to :condition

  validates :owner_id, :tape, :title, :label_title, :brand_id, :condition_id, :tape_format_id, presence: true
end

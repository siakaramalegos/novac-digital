class Physical < ActiveRecord::Base
  belongs_to :owner
  belongs_to :tape_format
  belongs_to :brand
  belongs_to :condition
end

class Physical < ActiveRecord::Base
  belongs_to :owner
  belongs_to :format
  belongs_to :brand
  belongs_to :condition
end

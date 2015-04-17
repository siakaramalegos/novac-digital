class Project < ActiveRecord::Base
  belongs_to :serial
  belongs_to :owner
end

class Project < ActiveRecord::Base
  belongs_to :serial
  belongs_to :owner
  has_and_belongs_to_many :filmmakers
end

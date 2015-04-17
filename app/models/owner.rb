class Owner < ActiveRecord::Base
	has_many :projects
  has_many :physicals
end

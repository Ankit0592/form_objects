class Profile < ActiveRecord::Base
	belongs_to :user
  
  include Status
end

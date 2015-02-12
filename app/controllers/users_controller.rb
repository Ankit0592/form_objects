class UsersController < ApplicationController

include Previewable  
	def index
  	@users= User.find_by_id(1) 
  	@users_decorator= UserDecorator.new(@users)
  end	
end


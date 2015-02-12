class UserDecorator
	attr_reader :user

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def initialize(user)
  	@user=user
  end
  	
  def email_present
  	if user.email.present?
  		true
  	else 
  		false
  	end 	
  end	
end

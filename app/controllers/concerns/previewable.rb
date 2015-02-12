#controller concern
module Previewable

	def new
    @signup_form = Signup.new
  end

  def create
    @signup = Signup.new(signup_params)
    @signup.register
		redirect_to root_path, notice: "User created"
  end

  def index
    byebug
  	@users=UserDecorator.all
  end	

  private
  def signup_params
    params.require(:signup).permit(:email, :github, :twitter)
  end
end
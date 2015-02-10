class Signup  
    include ActiveModel::Model

    attr_accessor :email, :twitter, :github
   
    validates_presence_of :email
    validates_presence_of :twitter
    validates_presence_of :github
    

    def register
        if valid?
            create_user
            create_profile 
        end
    end

    private

    def create_user
        hash = {}        
        hash[:email] = "#{email}"
        @user ||= User.new(hash)
        @user.status
        @user.save!
    end

    def create_profile
        hash = {}
        hash[:twitter] = "#{twitter}"
        hash[:github] = "#{github}"
        @profile = Profile.new(hash)
        @profile.status
        @user.profile = @profile
    end
end  
class ProfilesController < ApplicationController
    def new
        # form where user can fill out their OWN profile
        @user = User.find( params[:user_id] )
        @profile = Profile.new
    end
    
    def create
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile(profile_params)
        if @profile.save
            flash[:success] = "Profile Updated!"
            redirect_to user_path( params[:user_id] )
        else
            render action: :new
        end
    end
    
    private
        def profile_params #Whitelists whatever is on the form! Adding more table attributes means adding them on here as well!
            params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
        end
end
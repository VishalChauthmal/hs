class SessionsController < ApplicationController
    def new
    end
    
    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            # Log in user and redirect to page
            redirect_to(@user)
        else
            #Error message displayed through flash message
            flash.now[:danger] = "Invalid email/password combination"  
            render 'new'
        end
    end
    
    def destroy
    end

end
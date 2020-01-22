class SessionsController < ApplicationController

    def new 
    end
  
    def create    
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            flash.notice = "Successfully Logged In. Welcome Back!"
            
            redirect_to user_path(user)
        else 
            flash.notice = "No record found with that information - please try again"
            redirect_to login_path
        end
    end

    def destroy
      session[:user_id] = nil
      redirect_to '/login'
    end

end

class SessionsController < ApplicationController

    def new 
    end
  
    def create    

        if developer = Developer.find_by(username: params[:user][:username])
          #  developer = Developer.find_by(username: params[:developer][:username])
            if developer && developer.authenticate(params[:user][:password])
                session[:developer_id] = developer.id
                flash.notice = "Sucessfully Logged In As Developer. Welcome Back!"
                redirect_to developer_path(developer)
            else 
                flash.notice = "No record found with that information - please try again"
            redirect_to login_path
            end 
        else 
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
    end

    def destroy
      session[:user_id] = nil
      session[:developer_id] = nil
      flash.notice = "successfully logged out"
      redirect_to '/login'
    end

end

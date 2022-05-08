class UserController < ApplicationController
  
  def log_reg_form
  end

  def log_reg
    if params[:username].empty?
      render :log_reg_form
      return
    end

    @user = User.find_by(username: params[:username])
    if ! @user
      @user = User.new(username: params[:username])
      @user.save!
    end
    session[:username] = @user.username
    render :success
  end

  def success
  end

  def logout
    session[:username] = nil
    render :log_reg_form
  end
  
end

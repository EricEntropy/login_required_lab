class SessionsController < ApplicationController
  
  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
        redirect_to '/login'
    end
  end 

  def destroy 
    if session[:name].present? 
      session.delete :name
      redirect_to '/login'
    end 
  end 
end

class SecretsController < ApplicationController
  before_action :logged_in
  def show
    if logged_in
      params[:name]
    else 
      redirect_to '/login' unless current_user
    end 
  end

  private 
  def logged_in 
    redirect_to '/login' unless current_user
  end 
end

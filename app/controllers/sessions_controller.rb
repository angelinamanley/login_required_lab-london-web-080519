class SessionsController < ApplicationController

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to controller: 'sessions', action: 'new'
    else
        session[:name] = params[:name]
        redirect_to controller: 'secrets', action: 'show'   
    end
  end

  def destroy
    session.delete :name  
  end

end


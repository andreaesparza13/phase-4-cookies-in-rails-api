class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "World"
    cookies[:where_am_i] ||= "Where are you?"
    render json: { session: session, cookies: cookies.to_hash }
  end

end

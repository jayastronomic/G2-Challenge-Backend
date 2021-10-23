class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
  helper_method :login!, :logout!, :logged_in?, :current_visitor

  def login!
    session[:visitor_id] = @visitor.id
  end

  def logout!
    session.clear
  end

  def logged_in?
    session[:visitor_id]
  end

  def current_visitor
    @current_visitor ||= Visitor.find(session[:visitor_id]) if session[:visitor_id]
  end

end

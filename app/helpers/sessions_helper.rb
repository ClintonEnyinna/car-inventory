module SessionsHelper
  def current_user
    return unless session[:id]
    
    @current_user ||= User.find(session[:id])
  end

  def log_in(user)
    session[:id] = user.id
  end

  def log_out
    session[:id] = nil
    @current_user = nil
  end
end
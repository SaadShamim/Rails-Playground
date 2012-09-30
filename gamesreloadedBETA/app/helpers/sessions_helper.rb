module SessionsHelper
  
  def sign_in(moderator)
    cookies.permanent[:remember_token] = moderator.remember_token
    self.current_moderator = moderator
  end
  
  def signed_in?
    !current_moderator.nil?
  end
  
  def current_moderator=(moderator)
    @current_moderator = moderator
  end
  
  def current_moderator
    @current_moderator ||= Moderator.find_by_remember_token(cookies[:remember_token])
  end
  
end

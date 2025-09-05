class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  add_flash_types :danger

  private

  def require_signin
    unless current_user
      session[:intended_url] = request.url
      redirect_to signin_path, alert: "Please sign in first!"
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_correct_user
    @user = User.find(params[:id])
    redirect_to root_url, status: :see_other unless current_user?(@user)
  end

  def current_user?(user)
    current_user == user
  end

  def require_admin
    unless current_user_admin?
      redirect_to root_url, status: :see_other, alert: "Unauthorized access!"
    end
  end

  def current_user_admin?
    current_user && current_user.admin?
  end

  helper_method :current_user, :current_user?, :current_user_admin?
end

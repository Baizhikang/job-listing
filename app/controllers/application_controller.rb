class ApplicationController < ActionController::Base

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = '您没有管理者权限'
      redirect_to root_path
    end
  end
end

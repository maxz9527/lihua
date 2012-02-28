class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :init

  #init
  def init
  	@setting = Setting.first_init
  	Admin.first_init
  	@company_name = @setting.company_name
  	@email = @setting.email
  end
end

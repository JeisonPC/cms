class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_setting

  def set_setting
    # Lógica para obtener la configuración, por ejemplo:
    @setting = Setting.last
  end
end

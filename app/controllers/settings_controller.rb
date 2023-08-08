# app/controllers/settings_controller.rb
class SettingsController < ApplicationController
  def index
    @setting = Setting.last
  end

  def new
    @setting = Setting.new
  end

  def edit
    @setting = Setting.find(params[:id])
  end

  def create
    @setting = Setting.new(setting_params)

    respond_to do |format|
      if @setting.save
        format.html { redirect_to setting_url(@setting), notice: 'Setting was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
    @setting = Setting.last
  end

  def update
    @setting = Setting.find(params[:id])
    if @setting.update(setting_params)
      redirect_to @setting, notice: 'La configuración ha sido actualizada exitosamente.'
    else
      render :edit
    end
  end

  private

  def setting_params
    params.require(:setting).permit(:site_name, :logo, :favicon)
  end
end

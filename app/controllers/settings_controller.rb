class SettingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_setting, only: [:show, :edit, :update]

  respond_to :html

  def index
    @settings = Setting.all
    respond_with(@settings)
  end

  def show
    respond_with(@setting)
  end

  def edit
  end

  def update
    @setting.update(setting_params)
    respond_with(@setting)
  end

  private
    def set_setting
      @setting = Setting.find(params[:id])
    end

    def setting_params
      params.require(:setting).permit(:key, :value)
    end

end
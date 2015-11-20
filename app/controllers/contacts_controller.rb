class ContactsController < SettingsController
  before_action :authenticate_user!
  before_action :set_setting, only: [:edit, :update]

  def index
    @phone = Setting.find("phone")
    @mail = Setting.find("mail")
    @linkedin = Setting.find("linkedin")
  end

  def update
    @contact.update(setting_params)
    redirect_to contacts_path
  end

  private
    def set_setting
      # TODO: Global settings ?
      valid_keys = ["phone", "mail", "linkedin"]
      if valid_keys.include?(params[:id])
        @contact = Setting.find(params[:id])
      else
        flash[:error] = "Wrong id for contact."
        redirect_to contacts_path
      end
    end
end
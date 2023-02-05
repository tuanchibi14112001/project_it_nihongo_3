class Accounts::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @account = Account.from_omniauth(request.env["omniauth.auth"])

    if @account.persisted?
      sign_in_and_redirect @account, event: :authentication #this will throw if @account is not activated
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"].except(:extra) # Removing extra as it can overflow some session stores
      redirect_to new_account_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
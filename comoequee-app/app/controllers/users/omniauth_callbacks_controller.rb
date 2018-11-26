module Users
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def facebook
      @user = User.from_omniauth(request.env['omniauth.auth'])

      if @user.persisted?
        sign_in_and_redirect @user, event: :authentication # Throws if @user is not activated
        set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
        session[:user_id] = @user.id
      else
        session['devise.facebook_data'] = request.env['omniauth.auth']
        redirect_to index_url
      end
    end

    def failure
      redirect_to login_url
    end
  end
end
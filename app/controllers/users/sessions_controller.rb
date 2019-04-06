module Users
  class SessionsController < Devise::SessionsController
    layout 'devise'

    private

    # Overwriting the sign_out redirect path method -> sign in
    def after_sign_out_path_for(_resource_or_scope)
      new_user_session_path
    end
  end
end
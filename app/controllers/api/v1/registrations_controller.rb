module Api
  module V1
    class RegistrationsController < Devise::RegistrationsController
      skip_before_action :authenticate_user

      private

      def sign_up_params
        params.require(:user).permit(:email, :password, :password_confirmation)
      end
    end
  end
end

class Deai::SessionsController < ApplicationController
  def sign_in
    name = params.require(:name)
    user = DeaiUser.find_by!(name: name)

    session[:deai_user_id] = user.id

    render_ok user
  end
end

class Guchi::SessionsController < ApplicationController
  def sign_in
    name = params.require(:name)
    user = GuchiUser.find_by!(name: name)

    session[:user_id] = user.id

    render_ok user
  end
end

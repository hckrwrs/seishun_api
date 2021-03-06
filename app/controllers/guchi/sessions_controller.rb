class Guchi::SessionsController < ApplicationController
  before_action :reset_session, only: :sign_in

  def sign_in
    name = params.require(:name)
    user = GuchiUser.find_by!(name: name)

    session[:guchi_user_id] = user.id

    render_ok user, serializer: GuchiUsersSerializer
  end

  def sign_up
    name = params.require(:name)
    icon_id = params.require(:icon_id)
    sex_id = params.require(:sex_id)

    user = GuchiUser.create! name: name, icon_id: icon_id, sex_id: sex_id
    session[:guchi_user_id] = user.id
    render_ok user, serializer: GuchiUsersSerializer
  end
end

class Deai::SessionsController < ApplicationController
  before_action :reset_session, only: :sign_in

  def sign_in
    name = params.require(:name)
    user = DeaiUser.find_by!(name: name)

    session[:deai_user_id] = user.id

    render_ok user
  end

  def sign_up
    name = params.require(:name)
    icon_id = params.require(:icon_id)
    sex_ids = params.require(:sex_ids)

    user = DeaiUser.create! name: name, icon_id: icon_id, sex_ids: sex_ids
    session[:deai_user_id] = user.id
    render_ok user
  end
end

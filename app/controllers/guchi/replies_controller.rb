class Guchi::RepliesController < ApplicationController
  before_action :authenticate_guchi_user!

  def index
    guchi_id = params.require(:guchi_id)
    deai_user_id = params.require(:deai_user_id)

    replies = Reply.where(guchi_id: guchi_id, deai_user_id: deai_user_id)
    render_ok replies
  end

  def create
    guchi_id = params.require(:guchi_id)
    deai_user_id = params.require(:deai_user_id)
    content = params.require(:content)

    rep = Reply.create! guchi_id: guchi_id, deai_user_id: deai_user_id, guchi_user_id: current_guchi_user.id, is_guching: true, content: content

    render_ok rep
  end
end

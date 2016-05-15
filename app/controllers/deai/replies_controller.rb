class Deai::RepliesController < ApplicationController
  before_action :authenticate_deai_user!

  def create
    guchi_id = params.require(:guchi_id)
    content = params.require(:content)
    guchi = Guchi.find guchi_id

    rep = Reply.create! guchi_id: guchi_id, deai_user_id: current_deai_user.id, guchi_user_id: guchi.guchi_user_id, is_guching: false, content: content

    render_ok rep
  end

  def index
    guchi_id = params.require(:guchi_id)
    render_ok Reply.where(guchi_id: guchi_id, deai_user_id: current_deai_user.id), each_serializer: RepliesSerializer
  end
end

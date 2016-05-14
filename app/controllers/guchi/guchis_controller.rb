class Guchi::GuchisController < ApplicationController
  before_action :authenticate_guchi_user!
  before_action :set_guchi, only: %i[show]

  def index
    render_ok current_guchi_user.guchis.order('DESC')
  end

  def create
    content = params.require(:content)
    render_ok Guchi.create! content: content, guchi_user_id: current_guchi_user.id
  end

  def replied
    render_ok Guchi.search(replies_guchi_user_id_eq: current_guchi_user.id).result
  end

  # XXX: 自分以外の愚痴は見えないようにする(ハッカソン中は直さない)
  def show
    render_ok @guchi, serializer: GuchiIncludeReplySerializer
  end


  private

  def set_guchi
    @guchi = Guchi.find(params.require(:id))
  end
end

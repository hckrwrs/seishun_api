class Deai::GuchisController < ApplicationController
  before_action :authenticate_deai_user!
  before_action :set_guchi, only: %i[show]

  def index
    # XXX: なんかアルゴリズム実装する?
    render_ok Guchi.all.sample(5)
  end

  def replied
    render_ok current_deai_user.replies.map{|r| r.guchi}.uniq
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

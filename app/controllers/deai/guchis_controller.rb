class Deai::GuchisController < ApplicationController
  before_action :authenticate_deai_user!

  def index
    # XXX: なんかアルゴリズム実装する?
    render_ok Guchi.search(replies_deai_user_id_not_eq: current_deai_user.id).result.sample(5)
  end

  def replied
    render_ok current_deai_user.replies.map{|r| r.guchi}.uniq
  end
end

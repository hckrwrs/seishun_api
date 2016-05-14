class Deai::GuchisController < ApplicationController
  before_action :authenticate_deai_user!

  def index
    render_ok 
  end

  def replied
    render_ok current_deai_user.replies.map{|r| r.guchi}
  end
end

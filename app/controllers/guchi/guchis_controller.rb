class Guchi::GuchisController < ApplicationController
  before_action :authenticate_guchi_user!

  def index
    render_ok current_guchi_user.guchis
  end

  def replied
    render_ok Guchi.search(replies_guchi_user_id_eq: current_guchi_user.id).result
  end
end

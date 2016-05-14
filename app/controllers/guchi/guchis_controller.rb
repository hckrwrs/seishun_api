class Guchi::GuchisController < ApplicationController
  before_action :authenticate_guchi_user!

  def index
    render_ok current_guchi_user.guchis
  end
end

class Deai::GuchiUsersController < ApplicationController
  def show
    render_ok GuchiUser.find params.require :id
  end
end

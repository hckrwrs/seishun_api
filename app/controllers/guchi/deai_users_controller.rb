class Guchi::DeaiUsersController < ApplicationController
  def show
    render_ok DeaiUser.find params.require :id
  end
end

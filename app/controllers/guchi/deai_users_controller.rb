class Guchi::DeaiUsersController < ApplicationController
  def show
    render_ok DeaiUser.find(params.require :id), serializer: DeaiUsersSerializer
  end
end

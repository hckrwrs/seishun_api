class MasterDataController < ApplicationController
  def index
    render_ok({
      icons: Icon.all,
      sexes: Sex.all,
    }, serializer: MasterDataSerializer)
  end
end

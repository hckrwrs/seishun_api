class RepliesSerializer < ActiveModel::Serializer
  attributes :id, :content, :is_guching, :deai_user_id, :read, :guchi_user_icon_value
  belongs_to :guchi
  belongs_to :guchi_user
  def guchi_user_icon_value
    return object.guchi_user.icon.value
  end
end

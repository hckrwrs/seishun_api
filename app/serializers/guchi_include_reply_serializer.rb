class GuchiIncludeReplySerializer < ActiveModel::Serializer
  attributes :id, :content, :guchi_user_id
  has_many :replies
end

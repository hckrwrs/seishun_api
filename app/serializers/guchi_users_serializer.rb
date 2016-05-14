class GuchiUsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :icon_id, :sex_id
  belongs_to :icon
end

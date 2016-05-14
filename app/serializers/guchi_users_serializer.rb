class GuchiUsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :sex_id
  belongs_to :icon
end

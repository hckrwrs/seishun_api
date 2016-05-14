class DeaiUsersSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :icon
end

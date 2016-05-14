# == Schema Information
#
# Table name: deai_users
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  icon_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_deai_users_on_name  (name) UNIQUE
#

class DeaiUser < ActiveRecord::Base
  belongs_to :icon
  has_many :deai_user_sexes
  has_many :sexes, through: :deai_user_sexes
  has_many :replies
end

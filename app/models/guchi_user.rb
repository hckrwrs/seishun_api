# == Schema Information
#
# Table name: guchi_users
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  icon_id    :integer          not null
#  sex_id     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_guchi_users_on_icon_id  (icon_id)
#  index_guchi_users_on_sex_id   (sex_id)
#

class GuchiUser < ActiveRecord::Base
  has_many :guchis
  has_many :replies
  belongs_to :sex
  belongs_to :icon
end

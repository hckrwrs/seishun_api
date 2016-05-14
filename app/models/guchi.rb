# == Schema Information
#
# Table name: guchis
#
#  id            :integer          not null, primary key
#  content       :string           not null
#  guchi_user_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_guchis_on_guchi_user_id  (guchi_user_id)
#

class Guchi < ActiveRecord::Base
  belongs_to :guchi_user
  has_many :replies
end

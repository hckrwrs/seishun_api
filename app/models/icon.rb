# == Schema Information
#
# Table name: icons
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  value      :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Icon < ActiveRecord::Base
  has_many :guchi_users
  has_many :deai_users
end

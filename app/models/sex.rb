# == Schema Information
#
# Table name: sexes
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sex < ActiveRecord::Base
  has_many :guchi_users
  has_many :deai_user_sexes
  has_many :deai_users, through: :deai_user_sexes
end

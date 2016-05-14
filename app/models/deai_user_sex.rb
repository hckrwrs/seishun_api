# == Schema Information
#
# Table name: deai_user_sexes
#
#  id           :integer          not null, primary key
#  deai_user_id :integer          not null
#  sex_id       :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class DeaiUserSex < ActiveRecord::Base
  belongs_to :sex
  belongs_to :deai_user
end

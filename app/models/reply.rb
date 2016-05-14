# == Schema Information
#
# Table name: replies
#
#  id            :integer          not null, primary key
#  content       :string           not null
#  is_guching    :boolean          not null
#  guchi_id      :integer          not null
#  guchi_user_id :integer          not null
#  deai_user_id  :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Reply < ActiveRecord::Base
  belongs_to :guchi_user
  belongs_to :deai_user
  belongs_to :guchis
end

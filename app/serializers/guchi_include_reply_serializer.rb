class GuchiIncludeReplySerializer < ActiveModel::Serializer
  attributes :id, :content, :guchi_user_id, :replies

  def replies
    object.replies.group_by{|x| x.deai_user_id}.map{|_, reps| reps.sort_by{|r| r.created_at}.last}
  end
end

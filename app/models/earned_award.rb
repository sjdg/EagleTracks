class EarnedAward < ActiveRecord::Base
  attr_accessible :award_id, :date_earned, :user_id
  belongs_to :User
  belongs_to :Award

end

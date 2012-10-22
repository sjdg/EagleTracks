class AwardEarned < ActiveRecord::Base
  attr_accessible :award_id, :date_earned, :user_id
end

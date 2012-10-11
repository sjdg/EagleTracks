class CompletedRequirement < ActiveRecord::Base
  attr_accessible :completes_date, :requirement_id, :user_id
  has_many :Requirement
end

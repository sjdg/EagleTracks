class UserType < ActiveRecord::Base
  attr_accessible :user_type
  has_many :Users
  has_many :completed_requirements
end

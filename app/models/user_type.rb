class UserType < ActiveRecord::Base
  attr_accessible :user_type
  has_many :Users
end

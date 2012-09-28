class UserType < ActiveRecord::Base
  attr_accessible :type
  has_many :Users
end

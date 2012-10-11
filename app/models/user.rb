class User < ActiveRecord::Base
  attr_accessible :address_id, :first_name, :last_name, :organization_id, :password, :permissions_id, :user_type_id, :username
  belongs_to :Address
  belongs_to :UserType
  belongs_to :completed_requirement
end

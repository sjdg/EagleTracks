class Award < ActiveRecord::Base
  attr_accessible :begin_date, :end_date, :name
  has_many :Earned_Awards

end

class Requirement < ActiveRecord::Base
  attr_accessible :designator, :subrequirements, :subrequirements_required, :text
  belongs_to :completed_requirement
end

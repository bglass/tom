class Milestone < ActiveRecord::Base
  belongs_to   :phase
  has_many     :deliverables
  has_many     :payments
  has_many     :meetings
end

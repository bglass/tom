class Funding < ActiveRecord::Base
  has_many      :activities
end

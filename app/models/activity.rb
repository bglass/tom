class Activity < ActiveRecord::Base
#  attr_accessible :title :nickname :abstract :contract :funding_id :funding_amount :startdate_id :enddate_id :project_id

  validate :title,    :presence => true
  validate :nickname, :presence => true

  belongs_to :project
  belongs_to :activity
  belongs_to :funding

  has_many :People, :through => :KeyPeople
  has_many :Entities, :through => :Contractors
  has_many :Phases,     :dependent => :destroy
  has_many :Meetings,     :dependent => :destroy
  has_many :Milestones,     :dependent => :destroy
  has_many :Comments,     :dependent => :destroy
  has_many :Components,     :dependent => :destroy
  has_many :Infos,  :dependent => :destroy
  has_many :MonthlyReports,  :dependent => :destroy
  has_many :Actions,     :dependent => :destroy

end


class Picture < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true
end
 
class Employee < ActiveRecord::Base
  has_many :pictures, :as => :imageable
end

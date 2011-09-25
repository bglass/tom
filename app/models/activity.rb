# title:string nickname:string abstract:string contract:string funding_id:integer funding_amount:integer startdate_id:integer enddate_id:integer project_id:integer


class Activity < ActiveRecord::Base
#  attr_accessible :title :nickname :abstract :contract :funding_id :funding_amount :startdate_id :enddate_id :project_id

  validate :title,    :presence => true
  validate :nickname, :presence => true

  belongs_to :funding
  belongs_to :startdate, :class_name => "Stamp"
  belongs_to :enddate,   :class_name => "Stamp"
  belongs_to :project

  has_many :People, :through => :KeyPeople
  has_many :Entities, :through => :Contractors,     :dependent => :destroy
  has_many :Deliverables,     :dependent => :destroy
  has_many :Meetings,     :dependent => :destroy
  has_many :Milestones,     :dependent => :destroy
  has_many :Comments,     :dependent => :destroy
  has_many :Components,     :dependent => :destroy

end

# title:string nickname:string abstract:string contract:string funding_id:integer funding_amount:integer startdate_id:integer enddate_id:integer project_id:integer


class Activity < ActiveRecord::Base
#  attr_accessible :title :nickname :abstract :contract :funding_id :funding_amount :startdate_id :enddate_id :project_id

  validate :title,    :presence => true
  validate :nickname, :presence => true

end

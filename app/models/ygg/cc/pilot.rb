#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Cc

class Pilot < Ygg::PublicModel
  self.table_name = 'cc_pilots'

  belongs_to :person,
             class_name: 'Ygg::Core::Person'

  belongs_to :club

  has_many :pilot_aircrafts

  has_many :aircrafts,
           through: :pilot_aircrafts

  has_many :flights

  has_many :ranking_standings

  has_many :competition_pilots,
           class_name: '::Competition::Pilot',
           dependent: :destroy,
           embedded: true
  accepts_nested_attributes_for :competition_pilots, :allow_destroy => true

  has_many :competitions,
           through: :competition_pilots,
           uniq: true

  validates_presence_of :person
  validates_uniqueness_of :person_id
#  validates_presence_of :club

  def merge(other)
    flights << other.flights
    aircrafts << other.aircrafts
    competition_pilots << other.competition_pilots
    save!
  end
end


end

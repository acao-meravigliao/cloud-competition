#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class Pilot < Ygg::PublicModel
  self.table_name = 'cc_pilots'

  belongs_to :person,
             class_name: 'Ygg::Core::Person'

  belongs_to :club,
             class_name: 'Ygg::Cc::Club'

  has_many :pilot_aircrafts,
           class_name: 'Ygg::Cc::Pilot::Aircraft'

  has_many :aircrafts,
           class_name: 'Ygg::Cc::Aircraft',
           through: :pilot_aircrafts

  has_many :flights,
           class_name: 'Ygg::Cc::Flight'

  has_many :ranking_standings,
           class_name: 'Ygg::Cc::RankingStanding'

  has_many :competition_pilots,
           class_name: 'Ygg::Cc::Competition::Pilot',
           dependent: :destroy,
           embedded: true

  accepts_nested_attributes_for :competition_pilots, :allow_destroy => true

  has_many :competitions,
           class_name: 'Ygg::Cc::Competition',
           through: :competition_pilots
#           uniq: true

  validates_presence_of :person
  validates_uniqueness_of :person_id
#  validates_presence_of :club

  def merge(other)
    flights << other.flights
    aircrafts << other.aircrafts
    competition_pilots << other.competition_pilots
    save!
  end

  class Aircraft < Ygg::BasicModel
    self.table_name = 'cc_pilot_aircrafts'

    belongs_to :pilot,
               class_name: 'Ygg::Cc::Pilot'

    belongs_to :aircraft,
               class_name: 'Ygg::Cc::Aircraft'
  end
end

end
end

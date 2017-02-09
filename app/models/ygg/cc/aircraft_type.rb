#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Cc

class AircraftType < Ygg::BasicModel
  self.table_name = 'cc_aircraft_types'

  has_many :aircrafts

  has_many :configurations,
           class_name: 'Cc::AircraftType::Configuration'

  accepts_nested_attributes_for :configurations

  validates_presence_of :manufacturer
  validates_presence_of :name
  validates_presence_of :seats
  validates_numericality_of :seats

  validates_presence_of :motor
  validates_numericality_of :motor

  validates_numericality_of :handicap, :allow_nil => true
  validates_numericality_of :club_handicap, :allow_nil => true

  class Configuration < Ygg::BasicModel
    belongs_to :aircraft_type
    belongs_to :glider_class

    validates_presence_of :handicap
    validates_numericality_of :handicap, :allow_nil => true
    validates_numericality_of :club_handicap, :allow_nil => true
  end
end

end

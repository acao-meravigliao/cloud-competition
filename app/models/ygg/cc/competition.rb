#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class Competition < Ygg::PublicModel
  self.table_name = 'cc_competitions'

  has_many :competition_pilots,
           class_name: 'Ygg::Cc::Competition::Pilot'

  has_many :pilots,
           through: :competition_pilots

  has_many :rankings

  has_many :competition_flights,
           class_name: 'Ygg::Cc::Competition::Flight',
           dependent: :destroy,
           embedded: true

  has_many :flights,
           through: :competition_flights

  class Flight < Ygg::BasicModel
    self.table_name = 'cc_competition_flights'

    self.inheritance_column = :sti_type

    belongs_to :competition,
               class_name: 'Ygg::Cc::Competition'

    belongs_to :flight,
               class_name: 'Ygg::Cc::Flight'

    validates_presence_of :competition, :flight

    serialize :data, JSON

    class Cid2011 < Flight
      attr_accessor :task_eval
      attr_accessor :task_type

      validates_inclusion_of :cid_ranking, :in => [ :prom, :naz_open, :naz_15m, :naz_13m5, :naz_club ]
      validates_presence_of :cid_ranking

      validates_inclusion_of :task_eval, :in => [ :free, :not_completed, :completed ]
      validates_presence_of :task_eval

      validates_inclusion_of :task_type, :in => [ :butterfly, :simple_triangle, :round_trip,
                                                  :fai_triangle, :straight_line]
      validates_presence_of :task_type

      validates_presence_of :distance
      validates_numericality_of :distance

      after_initialize do
        if !new_record?
          self.data ||= {}
          self.task_eval = self.data[:task_eval]
          self.task_type = self.data[:task_type]
          self.cid_ranking = self.cid_ranking.to_sym
        end
      end

      before_validation do
        self.task_type = self.task_type.to_sym
        self.task_eval = self.task_eval.to_sym
        self.cid_ranking = self.cid_ranking.to_sym
      end

      before_save do
        nd = {}
        self.data ||= {}
        self.data.each { |k,v| nd[k.to_sym] = v }
        self.data = nd
        self.data[:task_eval] = self.task_eval.to_sym
        self.data[:task_type] = self.task_type.to_sym
      end

      def handicap
        return (self.flight.aircraft_type_configuration ?
                  self.flight.aircraft_type_configuration.handicap :
                  self.flight.aircraft.aircraft_type.handicap)
      end

      def club_handicap
        return (self.flight.aircraft_type_configuration ?
                  self.flight.aircraft_type_configuration.club_handicap :
                  self.flight.aircraft.aircraft_type.club_handicap)
      end

      def points
        return nil if !distance

        if self.competition.symbol.to_sym == :cid_2011 &&
           self.cid_ranking.to_sym == :naz_club
          hcap = club_handicap
        else
          hcap = handicap
        end

        return nil if !hcap

        pts = (distance / 1000.0) / hcap

        case self.task_type
        when :round_trip ; pts = pts * 1.3
        when :fai_triangle ; pts = pts * 1.4
        when :straight_line ; pts = pts * 1.6
        when :simple_triangle
          if task_eval != :free
            pts = pts * 1.2
          end
        end

        if task_eval == :completed
          pts = pts * 1.1
        end

        pts
      end
    end

    class Csvva2011 < Flight
      validates_presence_of :distance
      validates_numericality_of :distance

      def handicap
        return self.flight.aircraft_type_configuration ?
                 self.flight.aircraft_type_configuration.handicap :
                 self.flight.aircraft.aircraft_type.handicap
      end

      def points
        return nil if !distance

        (handicap && handicap > 0) ?
          ((distance / 1000.0) / handicap) :
          0
      end
    end

    class Csvva2010 < Flight
      validates_presence_of :distance
      validates_numericality_of :distance

      def handicap
        return self.flight.aircraft_type_configuration ?
                 self.flight.aircraft_type_configuration.handicap :
                 self.flight.aircraft.aircraft_type.handicap
      end

      def points
        return nil if !distance

        (self.handicap && self.handicap > 0) ?
          ((self.distance / 1000.0) / self.handicap) :
          0
      end
    end

    class Csvva2009 < Flight
      validates_presence_of :distance
      validates_numericality_of :distance

      def handicap
        return self.flight.aircraft_type_configuration ?
                 self.flight.aircraft_type_configuration.handicap :
                 self.flight.aircraft.aircraft_type.handicap
      end

      def points
        return nil if !distance

        (self.handicap && self.handicap > 0) ?
          ((self.distance / 1000.0) / self.handicap) :
          0
      end
    end

  end

  class Pilot < Ygg::BasicModel
    self.table_name = 'cc_competition_pilots'
    self.inheritance_column = :sti_type

    belongs_to :pilot,
               class_name: 'Ygg::Cc::Pilot'

    belongs_to :competition,
               class_name: 'Ygg::Cc::Competition'

    validates_presence_of :pilot, :competition

    class Cid2011 < Pilot
    end

    class Csvva2011 < Pilot
    end

    class Csvva2010 < Pilot
    end

    class Csvva2009 < Pilot
    end
  end
end

end
end

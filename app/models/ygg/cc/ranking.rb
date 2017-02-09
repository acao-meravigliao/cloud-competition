#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class Ranking < Ygg::PublicModel
  self.table_name = 'cc_rankings'

  has_many :pilots,
           through: :standings

  has_many :standings,
           class_name: 'Ygg::Cc::Ranking::Standing'

  has_many :sorted_standings,
           class_name: 'Ygg::Cc::Ranking::Standing'
#           order: 'value DESC, id ASC',
#           conditions: 'value IS NOT NULL'

  has_many :club_standings,
           class_name: 'Ygg::Cc::Ranking::ClubStanding'

  has_many :sorted_club_standings,
           class_name: 'Ygg::Cc::Ranking::ClubStanding'
#           order: 'value DESC, id ASC',
#           conditions: 'value IS NOT NULL'

  belongs_to :competitions

  class Group < Ygg::BasicModel
    self.table_name = 'cc_ranking_groups'

    has_many :rankins,
             class_name: 'Ygg::Cc::Ranking'
  end

  class Member < Ygg::BasicModel
    self.table_name = 'cc_ranking_members'

    belongs_to :ranking,
               class_name: 'Ygg::Cc::Ranking'

    belongs_to :pilot,
               class_name: 'Ygg::Cc::Pilot'

#    has_many :history_entries,
#             class_name: 'Ygg::Cc::Ranking::HistoryEntry'

    serialize :data, JSON
  end

  class Standing < Ygg::BasicModel
    self.table_name = 'cc_ranking_standings'

    belongs_to :ranking,
               class_name: 'Ygg::Cc::Ranking'

    belongs_to :pilot,
               class_name: 'Ygg::Cc::Pilot'

    belongs_to :flight,
               class_name: 'Ygg::Cc::Flight'

    has_many :history_entries,
             class_name: 'Ygg::Cc::Ranking::Standing::HistoryEntry'

    serialize :data, JSON

    class HistoryEntry < Ygg::BasicModel
      self.table_name = 'cc_ranking_standing_history_entries'

      belongs_to :standing,
                 class_name: 'Ranking::Standing'

      serialize :data, JSON
    end
  end

  class ClubStanding < Ygg::BasicModel
    self.table_name = 'cc_ranking_club_standings'

    belongs_to :ranking,
               class_name: 'Ygg::Cc::Ranking'

    belongs_to :club,
               class_name: 'Ygg::Cc::Club'

    has_many :history_entries,
             class_name: 'Ygg::Cc::Ranking::ClubStanding::HistoryEntry'

    serialize :data, JSON

    class HistoryEntry < Ygg::BasicModel
      self.table_name = 'cc_ranking_club_standing_history_entries'

      belongs_to :club_standing,
                 class_name: 'Ygg::Cc::Ranking::ClubStanding'

      serialize :data, JSON
    end
  end
end

end
end

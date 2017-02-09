#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class Aircraft::RestController < Ygg::Hel::RestController

  ar_controller_for Aircraft

  view :grid do
    empty!
    attribute(:id) { show! }
    attribute(:uuid) { show! }
    attribute(:registration) { show! }
    attribute(:aircraft_type) do
      show!
      empty!
      attribute(:id) { show! }
      attribute(:name) { show! }
    end
  end

  view :combo do
    empty!
    attribute(:id) { show! }
    attribute(:registration) { show! }
    attribute(:plane_type) do
      show!
      empty!
      attribute(:id) { show! }
      attribute(:configurations) { show! }
      attribute(:name) { show! }
    end
  end

#  filter :combo, lambda { |r| apply_search_to_relation(r, [ 'registration' ]) }

  def stats_by_pilot
    find_target

    respond_to do |format|
      format.html
      format.svg {
        graph = Scruffy::Graph.new(:theme => CsvvaTheme.new)
        graph.title = "Voli per pilota"
        graph.renderer = Scruffy::Renderers::Pie.new

        stats = Hash[@target.flights.all(:select => "pilots.id,count(*) AS cnt",
                                    :joins => "JOIN pilots ON flights.pilot_id=pilots.id",
                                    :group => "pilots.id").map { |x|
                                      [ Pilot.find(x.id).person.name, x.cnt.to_i ] }]

        graph.add :pie, '', stats

        send_data(graph.render, :type => "image/svg+xml", :disposition =>"inline")
      }
    end
  end
end

end
end

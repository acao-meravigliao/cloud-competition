#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class PilotAircraft < Ygg::BasicModel
  self.table_name = 'cc_pilot_aircrafts'

  belongs_to :pilot,
             class_name: 'Ygg::Cc::Pilot'

  belongs_to :aircraft,
             class_name: 'Ygg::Cc::Aircraft'
end

end
end

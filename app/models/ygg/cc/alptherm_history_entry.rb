#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Cc

class AlpthermHistoryEntry < Ygg::BasicModel
  self.table_name = 'cc_alptherm_history_entries'

  belongs_to :source, :class_name => "AlpthermSource"
end

end

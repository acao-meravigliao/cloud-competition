#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class AlpthermSource < Ygg::PublicModel
  self.table_name = 'cc_alptherm_sources'

  has_many :entries,
           class_name: 'Ygg::Cc::AlpthermHistoryEntry',
           foreign_key: :source_id
end

end
end

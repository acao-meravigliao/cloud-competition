#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class Club < Ygg::PublicModel
  self.table_name = 'cc_clubs'

  validates_presence_of :name

  has_many :pilots,
           class_name: 'Ygg::Cc::Pilot'

  has_many :flights,
           class_name: 'Ygg::Cc::Flight',
           through: :pilots
end

end
end

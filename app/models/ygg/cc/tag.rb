#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class Tag < Ygg::PublicModel
  self.table_name = 'cc_tags'

  has_many :flight_tags

  has_many :flights,
           through: :flight_tags

  belongs_to :group,
             class_name: 'Ygg::Cc::TagGroup'

  belongs_to :depends_on_competition,
             class_name: 'Ygg::Cc::Competition'
end

end
end

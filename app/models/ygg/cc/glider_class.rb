#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Cc

class GliderClass < Ygg::PublicModel
  self.table_name = 'cc_glider_classes'

  has_many :aircraft_type_configuration
end

end

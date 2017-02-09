#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Cc

class Club < Ygg::PublicModel
  self.table_name 'cc_clubs'

  validates_presence_of :name

  has_many :pilots

  has_many :flights,
           through: :pilots
end

end

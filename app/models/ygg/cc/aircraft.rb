#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class Aircraft < Ygg::PublicModel
  self.table_name = 'cc_aircrafts'

  belongs_to :aircraft_type,
             class_name: 'Ygg::Cc::AircraftType'

  has_many :flights,
           class_name: 'Ygg::Cc::Flight'

  validates_presence_of :registration
  validates_length_of :registration, in: 6..10
  validates_format_of :registration, with: /\A([A-Z0-9]{1,2}-[A-Z0-9]+|N[0-9]+[A-Z][A-Z])\z/

  validates_presence_of :aircraft_type

  def configurations_attributes=(attributes)
     # Process the attributes hash
  end
end

end
end

#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Cc

class FlightPhoto < Ygg::BasicModel
  self.table_name = 'cc_flight_photos'

  belongs_to :flight

  def flickr_url(size = 's')
   size_text = (size.nil? || size == '-') ? "" : ("_" + size)

   return "http://farm#{self.farm_id}.static.flickr.com/" +
           "#{self.server_id}/#{self.photo_id}_#{self.secret}#{size_text}.jpg"
  end

end

end

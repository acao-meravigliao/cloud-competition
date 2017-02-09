#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class IgcTmpFile < ActiveRecord::Base
  self.table_name = 'cc_igc_tmp_files'

  belongs_to :pilot,
             class_name: 'Ygg::Cc::Pilot'

  belongs_to :club

  after_create do
    File.open(self.filename, 'wb') do |f|
      @upload_filehandle.rewind
      f.write(@upload_filehandle.read)
    end

    @upload_filehandle = nil
  end

  after_destroy do
    begin
      File.delete(self.filename)
    rescue Errno::ENOENT
    end
  end

  def file=(file)
    @upload_filehandle = file
    self.original_filename = file.original_filename
  end

  def filename
    return File.join(Rails.root, 'db/igc_files', Rails.env, 'tmp', self.id.to_s + '.igc')
  end

  def igc_file
    @igc_file ||= IgcFile.open(self.filename, 'rb')
  end

  def encoded_polyline(options = {})
    GMapPolylineEncoder.new(:dp_threshold => 0.001).encode(
        self.igc_file.track.collect { |x| [x.lat, x.lon] })[:points]
  end
end

end
end

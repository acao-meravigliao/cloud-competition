#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

class AlpthermHistoryEntryController < ApplicationController
  def show
    @entry = AlpthermHistoryEntry.find(params[:id])

    render :layout => false
  end
end

end
end

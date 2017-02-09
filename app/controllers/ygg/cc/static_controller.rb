#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc

require 'pp'

class StaticController < ApplicationController

  def index
    redirect_to "/static/#{current_site.to_s}/"
  end

  def show
    begin
      render :action => params[:path]
    rescue ActionView::MissingTemplate
      raise ActionController::UnknownAction
    end
  end
end

end
end

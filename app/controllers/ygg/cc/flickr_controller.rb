#
# Copyright (C) 2008-2017, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

module Ygg
module Cc


#require 'flickraw_vihai'
#
#class FlickrController < ApplicationController
#
#  def callback
#    @flickr = FlickRawVihai::Session.new(FLICKR_API_KEY, FLICKR_SHARED_KEY, session[:flickr_token])
#
#    begin
#      session[:flickr_token] = @flickr.auth.getToken(:frob => params[:frob]).token
#      redirect_to params[:extra]
#    rescue FlickRawVihai::FailedResponse => e
#      render :text => "Authentication failed : #{e.msg}", :status => 500
#    end
#
#  end
#end

end
end

class VersionsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @versions = {:version => version} #other keys may be added for versions of the underlying api's perhaps.
    respond_with(@versions)
  end

end

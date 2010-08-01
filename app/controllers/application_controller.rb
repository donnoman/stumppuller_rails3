class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :version

  def version
    @version ||= File.read(File.join(Rails.root,'VERSION')).chomp
  end
  
end

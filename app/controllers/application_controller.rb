class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_universe

  def current_universe
    params[:universe_id]
  end
end

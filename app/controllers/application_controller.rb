class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_universe

  def current_universe
    if(params[:universe_id] != nil)
        Universe.find(params[:universe_id])
    end
  end
end

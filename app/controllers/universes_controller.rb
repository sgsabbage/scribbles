class UniversesController < ApplicationController
  # GET /universes/1
  def show
    @universe = Universe.find(params[:id])
  end

  def stories
    @universe = Universe.find(params[:universe_id])
    @stories = @universe.stories
  end

  def current_universe
    if params[:universe_id] != nil
      Universe.find(params[:universe_id])
    else
      Universe.find(params[:id])
    end
  end
end

class UniversesController < ApplicationController
  # GET /universes/1
  def show
    @universe = Universe.find(params[:id])
    @stories = @universe.stories
  end

  def current_universe
    params[:id]
  end
end

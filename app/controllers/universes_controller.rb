class UniversesController < ApplicationController

  def index
    @universes = Universe.all
  end

  # GET /universes/1
  def show
    @universe = Universe.find(params[:id])
  end

  def stories
    @universe = Universe.find(params[:universe_id])
    @stories = @universe.stories
  end

end

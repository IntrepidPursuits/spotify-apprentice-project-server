class V1::MixtapesController < V1::ApplicationController

  def index

  end

  def create()
    mixtape = MixtapeMaker.generate(params[:no_song], artists: params[:artist])
    render json: mixtape
  end

end



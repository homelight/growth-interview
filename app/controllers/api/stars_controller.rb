module Api
  class StarsController < ApiController
    skip_before_action :verify_authenticity_token

    def index
      byebug
    end

    def create
      new_gist_star= GistStar.create(gist_id: params[:star][:gist_id])
      
      render json: { result: 'OK', star: new_gist_star}
    end

    private

    def star_params
      params.require(:star).permit(:gist_id)
    end
  end
end
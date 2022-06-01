module Api
  class StarsController < ApiController
    skip_before_action :verify_authenticity_token

    def index
      @list_of_index = GistStar.all.pluck(:gist_id).uniq
      get_all_stars_count

      render json: @stars
    end

    def create
      new_gist_star = GistStar.create(gist_id: params[:star][:gist_id])
      
      render json: { result: 'OK', star: new_gist_star}
    end

    private

    def star_params
      params.require(:star).permit(:gist_id)
    end

    def get_all_stars_count
      @stars = {}
      @list_of_index.each { |index| @stars[index.to_sym] = GistStar.get_stars_count(index) }

      @stars
    end
  end
end

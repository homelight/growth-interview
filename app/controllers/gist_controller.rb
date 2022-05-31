class GistController < ApplicationController
  PUBLIC_GISTS_URL = 'https://api.github.com/gists/public'

  def index

    get_public_gists
  end

  private

  def get_public_gists
    @response_gists = []
    puts ENV['GH_BASIC_SECRET_ID']
    byebug

    (1..30).each do |page|

      paginated_gists = []
      puts PUBLIC_GISTS_URL + "?page=#{page}&per_page=100"
      response = RestClient.get(PUBLIC_GISTS_URL + "?page=#{page}&per_page=100")
      gists = JSON.parse(response.to_str)
      byebug

      # paginated_gists = gists.map do |gist|
      #   {
      #     id: gist['id'],
      #     date: gist['created_at'],
      #     description: gist['description'],
      #     comments: gist['comments'],
      #     url: gist['html_url']
      #   }
      # end
      
      # @response_gists = [*@response_gists, *paginated_gists]
    end

    byebug
  end
end

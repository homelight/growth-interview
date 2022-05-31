class GistController < ApplicationController
  PUBLIC_GISTS_URL = 'https://api.github.com/gists/public'

  def index

    get_public_gists
  end

  private

  def get_public_gists
    @response_gists = []


    paginated_gists = []
    response = RestClient.get(PUBLIC_GISTS_URL + "?page=1&per_page=100")
    gists = JSON.parse(response.to_str)

    paginated_gists = gists.map do |gist|
      {
        id: gist['id'],
        date: gist['created_at'],
        description: gist['description'],
        comments: gist['comments'],
        url: gist['html_url']
      }
    end
      
    @response_gists = paginated_gists
  end
end

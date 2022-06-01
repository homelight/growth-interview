class GistStar < ApplicationRecord

  def self.get_stars_count gist_id = nil
    list=[]
    list = self.where('gist_id = ?', gist_id) unless !gist_id

    list.size
  end
end

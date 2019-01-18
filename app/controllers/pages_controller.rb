class PagesController < ApplicationController
  def home
    redirect_to stories_path
  end
end

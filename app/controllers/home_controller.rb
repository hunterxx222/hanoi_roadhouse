class HomeController < ApplicationController
  def index
  end

  def menu
    if params[:section]
      @section = Section.find_by_name params[:section]
    end
  end

  def contact_us
  end
end

class HomeController < ApplicationController
  def index
    if params[:search]
          @food_items = FoodItem.where(['name ILIKE ?', "%#{params[:search]}%"])
    end
  end

  def menu
    if params[:section]
      @section = Section.find_by_name params[:section]
    end
  end

  def contact_us
  end
end

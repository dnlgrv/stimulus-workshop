class PeopleController < ApplicationController
  def index
    @people = if params[:name].blank?
      []
    else
      Person.where("name LIKE ?", "%#{params[:name]}%")
    end
  end
end

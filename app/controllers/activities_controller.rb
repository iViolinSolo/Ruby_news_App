class ActivitiesController < ApplicationController
  def new
  end

  def create
    render plain: params[:activity].inspect
  end
end
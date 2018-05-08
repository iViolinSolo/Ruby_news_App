class ActivitiesController < ApplicationController
  def new
  end

  def create
    # render plain: params[:activity].inspect
    @activity = Activity.new(params[:activity])
    puts @activity

    @activity.save
    redirect_to @activity
  end
end
class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:activity].inspect
    # @activity = Activity.new(params[:activity])
    @activity = Activity.new(activity_params)
    puts @activity

    @activity.save
    redirect_to @activity
  end

  private

    def activity_params
      params.require(:activity).permit(:title, :content)
    end

end
class ActivitiesController < ApplicationController
  def index

  end

  def show

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
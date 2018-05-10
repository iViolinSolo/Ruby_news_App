class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def edit
    @activity = Activity.find(params[:id])
    # render plain: @activity.inspect
  end

  def create
    # render plain: params[:activity].inspect
    # @activity = Activity.new(params[:activity])
    @activity = Activity.new(activity_params)
    puts @activity

    if @activity.save
      redirect_to @activity
    else
      render 'new'
    end
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      redirect_to @activity
    else
      render 'edit'
    end
  end

  private

    def activity_params
      params.require(:activity).permit(:title, :content)
    end

end
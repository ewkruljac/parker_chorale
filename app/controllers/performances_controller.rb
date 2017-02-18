class PerformancesController < ApplicationController
  before_action :logged_in_user, only: [:create, :new, :destroy]


  def create
    @performance = Performance.new(performance_params)
    if @performance.save
      redirect_to '/hear_us_sing'
    else
      render 'new'
    end
  end

  def new
    @performance = Performance.new
  end

  def index
    @performances = Performance.all.order('end_date DESC')
  end

  def show
  
  end
   def edit
    @performance = Performance.find(params[:id])
  end

  def update
    @performance = Performance.find(params[:id])
    if @performance.update_attributes(performance_params)
      flash[:success] = "Performance updated!"
      redirect_to '/hear_us_sing'
    else
      render 'edit'
    end
  end

  def destroy
    @performance = Performance.find(params[:id]).destroy
    redirect_to '/hear_us_sing'
  end

  private

    def performance_params
      params.require(:performance).permit(:title, :start_date, :end_date, :purchase_link, :event_pic, :youtube_link)
    end


end

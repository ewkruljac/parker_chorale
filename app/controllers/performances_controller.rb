class PerformancesController < ApplicationController

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
    @performances = Performance.all
  end

  def show
  
  end

  def destroy
  end

  private

    def performance_params
      params.require(:performance).permit(:title, :start_date, :end_date, :purchase_link, :event_pic)
    end
end

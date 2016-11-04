class SupportersController < ApplicationController

  def create
    @supporter = Supporter.new(supporter_params)
    if @supporter.save
      redirect_to '/generous_supporters'
    else
      render 'new'
    end
  end

  def new
    @supporter = Supporter.new
  end

  def index
    @supporters = Supporter.all
  end

  def show
    @supporter = Supporter.find(params[:id])
  end

  def destroy
  end

  private

    def supporter_params
      params.require(:supporter).permit(:name, :phone, :website_url, :kind, :logo)
    end
end

class SupportersController < ApplicationController
  before_action :logged_in_user, only: [:create, :new]

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

  def edit
    @supporter = Supporter.find(params[:id])
  end

  def update
    @supporter = Supporter.find(params[:id])
    if @supporter.update_attributes(supporter_params)
      flash[:success] = "Supporter updated!"
      redirect_to '/generous_supporters'
    else
      render 'edit'
    end
  end

  def destroy
    @supporter = Supporter.find(params[:id]).destroy
    redirect_to '/generous_supporters'
  end

  private

    def supporter_params
      params.require(:supporter).permit(:name, :phone, :website_url, :kind, :logo)
    end
end

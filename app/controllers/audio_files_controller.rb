class AudioFilesController < ApplicationController
  before_action :logged_in_user, only: [:create, :new, :show, :destroy]

  def create
    @audio_file = AudioFile.new(audio_params)
    if @audio_file.save
      redirect_to '/practice'
    else
      render 'new'
    end
  end

  def new
    @audio_file = AudioFile.new
  end

  def index
    @audio_files = AudioFile.all
  end

  def show
    @audio_file = AudioFile.find(params[:id])
  end

  def destroy
    @audio_file = AudioFile.find(params[:id]).destroy
    redirect_to '/practice'
  end

  private

    def audio_params
      params.require(:audio_file).permit(:title, :part, :audio, :mp3, :performance_id)
    end

end
 
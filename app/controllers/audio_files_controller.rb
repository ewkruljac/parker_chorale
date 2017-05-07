class AudioFilesController < ApplicationController
  before_action :logged_in_user, only: [:create, :new, :show, :destroy, :logged_in_index]

  def create
    @performances = Performance.all
    @audio_file = AudioFile.new(audio_params)
    if @audio_file.save
      redirect_to '/practice'
    else
      render 'new'
    end
  end

  def edit
    @audio_file = AudioFile.find(params[:id])
  end

  def update
    @audio_file = AudioFile.find(params[:id])
    if @audio_file.update_attributes(audio_params)
      flash[:success] = "Song updated!"
      redirect_to '/practice'
    else
      render 'edit'
    end
  end

  def new
    @performances = Performance.all
    @audio_file = AudioFile.new
  end

  def index
    @performances = []
    performances = Performance.all

    performances.each do |e|
      @performances << e if e.end_date > Time.now
    end

    @song_list = []
    songs = AudioFile.all

    songs.each do |e|
      @song_list << e.title
    end

    @song_list.uniq!
    @song_list = @song_list.map do |e|
      e.titleize
    end
    @song_list.sort!
    @audio_files = AudioFile.order('title ASC')
  end

  def logged_in_index
    @audio_files = AudioFile.order('title ASC')
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
 
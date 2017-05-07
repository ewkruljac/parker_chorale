class StaticPagesController < ApplicationController
  def home
    @upcoming_performances = Performance.all
    @home_page_performances = []
    @upcoming_performances.each do |e|
      @home_page_performances << e.title if e.end_date > Time.now
    end 
  end

  def about
  end

  def hear_us_sing
  end

  def support
  end

  def contact
  end
  
end

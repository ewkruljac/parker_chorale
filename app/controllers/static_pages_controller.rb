class StaticPagesController < ApplicationController
  def home
    @upcoming_performances = Performance.all
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

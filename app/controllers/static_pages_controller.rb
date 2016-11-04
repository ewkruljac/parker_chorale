class StaticPagesController < ApplicationController
  def home
    @upcoming_performance = Performance.last
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

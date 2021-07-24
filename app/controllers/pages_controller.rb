class PagesController < ApplicationController
  def home
  end

  def about
    @date = Date.today.to_s
  end
end

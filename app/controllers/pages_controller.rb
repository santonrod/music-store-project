class PagesController < ApplicationController

  def index
    if user_signed_in?
      redirect_to instruments_path
    end
  end

end


# frozen_string_literal: true

class TutorialsController < ApplicationController
  Yt.configure do |config|
    config.api_key = 'AIzaSyA8h7I4wunB3J-0sH-7VMu1vKIQGGDK_iw'
  end

  def index
    @tutorials = if params[:com_nome]
      Tutorial.where('name LIKE ?', "%#{params[:com_nome]}%").paginate(page: params[:page], per_page: 12)
    else
      Tutorial.order(:name).paginate(page: params[:page], per_page: 12)
    end
  end

  private
    def tutorial_params
      params.require(:tutorial).permit(:name)
    end
end

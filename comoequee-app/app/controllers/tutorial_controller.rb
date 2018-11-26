# frozen_string_literal: true

class TutorialController < ApplicationController
  before_action :authorize
  Yt.configure do |config|
    config.api_key = 'AIzaSyA8h7I4wunB3J-0sH-7VMu1vKIQGGDK_iw'
  end

  def show
    # Tutorial
    tutorial_id = params[:tutorial_id].to_i
    # Chapter
    chapter_id = Chapter.where(tutorial_id: tutorial_id).ids[0]
    # Content
    content_id = Content.where(chapter_id: chapter_id).ids[0]

    redirect_to "/tutorial/#{tutorial_id}/#{chapter_id}/#{content_id}/"
    # Video
    video_id = Content.where(chapter_id: chapter_id).ids[6]
    video = Yt::Video.new id:  video_id
    video.embed_html
  end
  
  def index
    tutorial_id = params[:tutorial_id].to_i
    chapter_id = params[:chapter_id].to_i
    content_id = params[:content_id].to_i

    @tutorial = Tutorial.find(tutorial_id)
    @chapter = Chapter.find(chapter_id)
    @content = Content.find(content_id)
  end
end

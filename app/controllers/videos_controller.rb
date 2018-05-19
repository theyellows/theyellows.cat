class VideosController < ApplicationController
  def index
    @videos = Video.for_fae_index.where("published_at <= ?", Time.zone.now).where(active: true).where(category: params[:category]).available_for_current_locale(@current_locale).page params[:page]
    unless @videos.present?
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def show
    @video = Video.where("published_at <= ?", Time.zone.now).available_for_current_locale(@current_locale).find_by_slug(params[:slug])
    unless @video.present?
      raise ActionController::RoutingError.new('Not Found')
    end
  end

end

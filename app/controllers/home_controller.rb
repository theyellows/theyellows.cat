class HomeController < ApplicationController
  def show
    @home = HomePage.instance
    @read_more_page = Page.find_by_slug(@home.hero_link.content) if @home.hero_link.content.present?
    @videos = Video.for_fae_index.where(active: true).where("published_at <= ?", Time.zone.now).available_for_current_locale(@current_locale).limit(3).order(:position)
    @video_categories = Video.categories.keys

    @featured_videos = Video.where(active: true).where(featured_home: true).where("published_at <= ?", Time.zone.now).available_for_current_locale(@current_locale).order(:position)
  end
end

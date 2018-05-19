module Admin
  class VideosController < Fae::BaseController

    private

    def build_assets
      @item.build_hero_image if @item.hero_image.blank?
      @item.build_video if @item.video.blank?
    end
  end
end

module Admin
  class ContentBlocksController < Fae::StaticPagesController

    before_action :set_pages

    private

    def fae_pages
      [HomePage, FooterPage]
    end

    def set_pages
      @pages = Page.for_fae_index
    end
  end
end

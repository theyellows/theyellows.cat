class PagesController < ApplicationController
  def show
    @page = Page.find_by_slug(params[:slug])
    unless @page.present? && @page.active
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end

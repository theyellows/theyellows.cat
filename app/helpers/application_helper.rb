module ApplicationHelper

  def language_route(locale)
    locale_url = locale.to_s
    # TODO this should automatically be handled by a concern that would manage localizable slugs in order to have proper switching
    if controller_name == 'pages' && action_name == 'show'
      @page = Page.find_by_slug(params[:slug])
      return page_path @page.slug_for_locale(locale), :locale => locale_url
    elsif controller_name == 'videos' && action_name == 'show'
      @video = Video.find_by_slug(params[:slug])
      return url_for(controller: :videos, action: :show, slug: @video.slug_for_locale(locale), locale: locale_url)
    else
      { :locale => locale_url }
    end
  end

  def page_route(page)
    if page.is_a? Page
      page_path(page.slug)
    else
      '#'
    end
  end
end

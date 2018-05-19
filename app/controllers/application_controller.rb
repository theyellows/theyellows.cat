class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale, :set_options, :set_navbar_pages, :set_footer

  private

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
      @current_locale = I18n.locale
      @locales = Fae.languages
    end

    def set_options
      @option = Fae::Option.first
    end

    def set_navbar_pages
      @has_own_videos = Video.exists?(active: true, category: :own)
      @has_other_videos = Video.exists?(active: true, category: :other)
      @pages = Page.where(active: true, in_menu: true).to_a
      @pages.insert([1, @pages.count].min)
    end

    def set_footer
      @footer = FooterPage.instance
    end

    def default_url_options(options={})
      { locale: ((I18n.locale == I18n.default_locale) ? nil : I18n.locale) }.merge options
    end

end

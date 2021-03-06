class FooterPage < Fae::StaticPage

  @slug = 'footer'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      about_text: {
          type: Fae::TextArea,
          languages: Fae.languages.keys
      },
      twitter_link: { type: Fae::TextField },
      facebook_link: { type: Fae::TextField },
      youtube_link: { type: Fae::TextField },
    }
  end

  fae_translate :about_text

end

class HomePage < Fae::StaticPage

  @slug = 'home'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      hero_title: {
          type: Fae::TextField,
          languages: Fae.languages.keys
      },
      hero_text: {
          type: Fae::TextArea,
          languages: Fae.languages.keys
      },
      hero_link: { type: Fae::TextField }
    }
  end

  fae_translate :hero_text
  fae_translate :hero_title

end

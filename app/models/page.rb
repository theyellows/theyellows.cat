class Page < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    title
  end

  def slug_for_locale(locale)
    self.send "slug_#{locale}"
  end

  Fae.languages.keys.each do |locale|
    validates "slug_#{locale}", Fae.validation_helpers.slug
  end

  fae_translate :title, :slug, :body

  has_fae_image :image

  acts_as_list add_new_at: :top
  default_scope { order(:position) }
end

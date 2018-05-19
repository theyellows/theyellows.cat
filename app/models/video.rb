class Video < ApplicationRecord
  include Fae::BaseModelConcern

  enum category: [ :own, :other ]

  validates :url, presence: true
  validates :url, format: { with: /(facebook\.com\/[^\/]+\/videos\/[0-9]*)|(youtu((\.be)|(be\.com))\/(watch\?v=)?[A-z0-9\-_]+)/ }

  def fae_display_field
    title
  end

  def self.for_fae_index
    order(published_at: :desc)
  end

  def slug_for_locale(locale)
    self.send "slug_#{locale}"
  end

  Fae.languages.keys.each do |locale|
    validates "slug_#{locale}", Fae.validation_helpers.slug
  end

  validates :published_at, presence: true

  fae_translate :title, :slug, :body

  has_fae_image :hero_image
  has_fae_file :video

  paginates_per 12

  def self.available_for_current_locale(current_locale)
    where("available_#{current_locale} = ?", true)
  end

end

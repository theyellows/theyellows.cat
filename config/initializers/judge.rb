# expose uniqueness attributes in Judge

Judge.configure do
  Fae.languages.keys.each do |locale|
    expose Page, "slug_#{locale}"
    expose Video, "slug_#{locale}"
  end
end

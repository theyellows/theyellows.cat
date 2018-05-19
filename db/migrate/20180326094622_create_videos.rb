class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title_en
      t.string :title_es
      t.string :title_ca
      t.string :slug_en
      t.string :slug_es
      t.string :slug_ca
      t.integer :category
      t.text :body_en
      t.text :body_es
      t.text :body_ca
      t.string :url
      t.integer :position
      t.date :published_at
      t.boolean :available_en, default: false
      t.boolean :available_es, default: false
      t.boolean :available_ca, default: false
      t.boolean :active, default: true

      t.timestamps
    end
  end
end

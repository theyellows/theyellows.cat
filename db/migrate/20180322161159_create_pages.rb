class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title_en
      t.string :title_es
      t.string :title_ca
      t.integer :position
      t.string :slug_en
      t.string :slug_es
      t.string :slug_ca
      t.text :body_en
      t.text :body_es
      t.text :body_ca
      t.boolean :active, default: true
      t.boolean :in_menu, default: true

      t.timestamps
    end
  end
end

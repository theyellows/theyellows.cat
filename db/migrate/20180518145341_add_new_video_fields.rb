class AddNewVideoFields < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :featured_home, :boolean, default: false
  end
end

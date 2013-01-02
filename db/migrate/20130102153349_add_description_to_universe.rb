class AddDescriptionToUniverse < ActiveRecord::Migration
  def change
    add_column :universes, :description, :text
  end
end

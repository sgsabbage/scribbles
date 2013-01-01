class CreateUniverseCharacterAssociation < ActiveRecord::Migration
  def change
    create_table :characters_universes, id: false do |t|
        t.integer :character_id
        t.integer :universe_id
    end
  end
end

class CreateStoryChapterAssociation < ActiveRecord::Migration
  def change
    add_column :chapters, :story_id, :integer
    add_index :chapters, :story_id
  end
end

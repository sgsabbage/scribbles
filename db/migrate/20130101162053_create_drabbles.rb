class CreateDrabbles < ActiveRecord::Migration
  def change
    create_table :drabbles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

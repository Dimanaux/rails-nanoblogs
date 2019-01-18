class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.text :content
      t.integer :views_count, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

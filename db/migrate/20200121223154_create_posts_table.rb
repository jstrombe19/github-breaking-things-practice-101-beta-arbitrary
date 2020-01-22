class CreatePostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t| 
      t.references :user, foreign_key: true
      t.references :social_media, foreign_key: true
    end
  end
end

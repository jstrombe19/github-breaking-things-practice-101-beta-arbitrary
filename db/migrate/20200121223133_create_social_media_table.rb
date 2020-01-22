class CreateSocialMediaTable < ActiveRecord::Migration[6.0]
  def change
    create_table :social_media do |t| 
      t.string :name 
    end
  end
end

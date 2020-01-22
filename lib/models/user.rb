class User < ActiveRecord::Base 
    has_many :posts
    has_many :social_medias, through: :posts
end
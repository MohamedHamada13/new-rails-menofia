class User < ApplicationRecord
    # has_many :posts
    has_many :created_posts, class_name: "Post", foreign_key: "user_id"
    # Give an alias to the post association, and specify the foreign key to use for the association. 
    # This allows us to use created_posts instead of posts when accessing the user's posts.  
end

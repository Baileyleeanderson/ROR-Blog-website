class User < ActiveRecord::Base
    has_many :messages
    has_many :posts
    has_many :owners
    has_many :blogs, through: :owners
    has_many :comments, as: :commentable
    validates :first_name, :last_name, presence: true, length: {in: 2..100}
    validates :email, presence: true
end

blog = Blog.first
blog.destroy()
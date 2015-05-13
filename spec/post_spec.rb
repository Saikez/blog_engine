require_relative 'helper'

describe Post do
  it 'belongs to an author' do
  	blog = Blog.create!(name: "Simons Blog2")
    author = blog.authors.create!(name: "Simon")
    category = blog.categories.create!(name: "Computers2")

    post = Post.create!(
      title: "My Computer2",
      content: "A post on computers2",
      author: author,
      category: category
    )

    post.author_id.must_equal(author.id)
  end

  it 'has many comments' do
  	blog = Blog.create!(name: "Simons Blog2")
    author = blog.authors.create!(name: "Simon")
    author2 = blog.authors.create!(name: "Not Simon")
    category = blog.categories.create!(name: "Computers2")

    post = Post.create!(
      title: "My Computer2",
      content: "A post on computers2",
      author: author,
      category: category
    )

    comment = Comment.create!(
    	name: "My Comment",
    	content: "This is a comment",
    	post: post
    )

    post.comments.empty?.must_equal(false)
  end

  it 'belongs to a category'

  it 'belongs to a blog through a category'

  it 'has many tags through posttags'
end

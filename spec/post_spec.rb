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

    post.author.must_equal(author)
  end

  it 'has many comments' do
  	blog = Blog.create!(name: "Simons Blog2")
    author = blog.authors.create!(name: "Simon")
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

  it 'belongs to a category' do
  	blog = Blog.create!(name: "Simons Blog2")
    author = blog.authors.create!(name: "Simon")
    category = blog.categories.create!(name: "Computers2")

    post = Post.create!(
      title: "My Computer2",
      content: "A post on computers2",
      author: author,
      category: category
    )

    post.category.must_equal(category)
  end

  it 'belongs to a blog through a category' do
  	blog = Blog.create!(name: "Simons Blog2")
    author = blog.authors.create!(name: "Simon")
    category = blog.categories.create!(name: "Computers2")

    post = Post.create!(
      title: "My Computer2",
      content: "A post on computers2",
      author: author,
      category: category
    )

    post.category.blog.must_equal(blog)
  end

  it 'has many tags through posttags' do
  	blog = Blog.create!(name: "Simons Blog2")
    author = blog.authors.create!(name: "Simon")
    category = blog.categories.create!(name: "Computers2")

    post = Post.create!(
      title: "My Computer2",
      content: "A post on computers2",
      author: author,
      category: category
    )

    post.tags.create!(name: "tagged!")

    post.tags.empty?.must_equal(false)
  end
end

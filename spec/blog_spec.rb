require_relative 'helper'

describe Blog do
  it 'has many posts through categories' do
    blog = Blog.create!(name: 'BenBlog')
    author = blog.authors.create!(name: 'Ben Lovell')
    category = blog.categories.create!(name: 'Motorsports')

    Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
    )

    blog.posts.empty?.must_equal(false)
  end

  it 'has many authors' do
    blog = Blog.create!(name: "Simons Blog")
    author = blog.authors.create!(name: "Simon")
    category = blog.categories.create!(name: "Computers")

    Post.create!(
      title: "My Computer",
      content: "A post on computers",
      author: author,
      category: category
    )

    blog.authors.empty?.must_equal(false)
  end

  it 'has many categories' do
    blog = Blog.create!(name: "Simons Blog2")
    author = blog.authors.create!(name: "Simon")
    category = blog.categories.create!(name: "Computers2")

    Post.create!(
      title: "My Computer2",
      content: "A post on computers2",
      author: author,
      category: category
    )

    blog.categories.empty?.must_equal(false)
  end
end

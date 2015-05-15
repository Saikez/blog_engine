require_relative 'helper'

describe Blog do

  before do
    @blog = Blog.create!(name: 'BenBlog')
    @author = @blog.authors.create!(name: 'Ben Lovell', twitter_handle: '@benlovell')
    @category = @blog.categories.create!(name: 'Motorsports')

    Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: @author,
      category: @category
    )
  end

  it 'is valid with valid attributes' do
    @blog.valid?.must_equal(true)
  end

  it 'requires a name' do
    blog = Blog.new

    blog.valid?.must_equal(false)
  end

  it 'require a unique name' do
    Blog.create!(name: 'My Blog')

    blog = Blog.new(name: 'My Blog')

    blog.valid?.must_equal(false)
  end

  it 'has many posts through categories' do
    @blog.posts.empty?.must_equal(false)
  end

  it 'has many authors' do
    @blog.authors.empty?.must_equal(false)
  end

  it 'has many categories' do
    @blog.categories.empty?.must_equal(false)
  end
end

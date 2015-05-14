require_relative 'helper'

describe Post do
	before do
		@blog = Blog.create!(name: 'BenBlog')
    @author = @blog.authors.create!(name: 'Ben Lovell')
    @category = @blog.categories.create!(name: 'Motorsports')

    @post = Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: @author,
      category: @category
    )

    Comment.create!(
    	content: "My first comment!"
    	post: @post
    )
	end
  it 'belongs to an author' do
  	@post.author.must_equal(@author)
  end

  it 'has many comments'

  it 'belongs to a category'

  it 'belongs to a blog through a category'

  it 'has many tags through posttags'
end

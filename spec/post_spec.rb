require_relative "helper"

describe Post do

  before do
    @blog = Blog.create!(name: "Simons Blog2")
    @author = @blog.authors.create!(name: "Simon", twitter_handle: "@saikez", github_profile: "Saikez")
    @category = @blog.categories.create!(name: "Computers2")

    @post = @category.posts.create!(title: "My computer", content: "A post on computers", author: @author)
    @comment = @post.comments.create!(name: "My comment", content: "This is a comment")

    @post.tags.create!(name: "tagged!")
  end

  it "sends a tweet to the author" do
    @post.tweeted_author?.must_equal(true)
  end

  it "defaults `tweeted_author?` to false" do
    Post.new.tweeted_author?.must_equal(false)
  end
  
  it "belongs to an author" do
    @post.author.must_equal(@author)
  end

  it "has many comments" do
    @post.comments.empty?.must_equal(false)
  end

  it "belongs to a category" do
    @post.category.must_equal(@category)
  end

  it "belongs to a blog through a category" do
    @post.category.blog.must_equal(@blog)
  end

  it "has many tags through posttags" do
    @post.tags.empty?.must_equal(false)
  end
end

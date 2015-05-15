class Author < ActiveRecord::Base
  belongs_to :blog

  validates :blog, presence: true
  validates :name, presence: true
  validates :twitter_handle, uniqueness: true, format: {with: /\A@\w+\z/}
  validate :twitter_handle_exists

  def twitter_handle_exists
  	t = open("https://twitter.com/#{self.twitter_handle.gsub("@", "")}")
  	errors.add(:twitter_handle, "does not exist") unless t.status.first == "200"
  end
end
